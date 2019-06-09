class GroupController < ApplicationController
  def create
    @group = current_user.group.create!(group_params)
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
