class GroupsController < ApplicationController
  def create
    byebug
    @group = current_user.groups.create!(group_params)
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
