class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :update, :join, :leave]

  def index
    @groups = Group.where(public: true).except(current_user.groups).sample(10)
    @groups = Group.where(public: true).where("name like ?", "%" + params[:filter] + "%") if params[:filter].present?
    json_response_groups(@groups)
  end

  def create
    @group = current_user.groups.create!(group_params)
    json_response_group(@group)
  end

  def show
    json_response_group(@group)
  end

  def update
    # @group.members << current_user
    # json_response_group(@group)
  end

  def join
    @group.members << current_user
    json_response_group(@group)
  end

  def leave
    @group.members.delete(current_user)
    json_response_group(@group)
  end

  private

  def group_params
    params.require(:group).permit(:name, members: [])
  end

  def set_group
    @group = Group.find(params[:id])
  end
end
