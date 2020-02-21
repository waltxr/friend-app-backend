class GroupsController < ApplicationController
  before_action :set_group, only: [:show]

  def index
    @groups = Group.where(public: true).except(current_user.groups).sample(10)
    @groups = Group.where(public: true).where("name like ?", "%" + params[:filter] + "%") if params[:filter].present?
    json_response_groups(@groups)
  end

  def create
    @group = current_user.groups.create!(group_params)
  end

  def show
    json_response_group(@group)
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end

  def set_group
    @group = Group.find(params[:id])
  end
end
