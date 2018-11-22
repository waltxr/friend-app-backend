class ActionsController < ApplicationController

  def create
    byebug
    @action = Action.create(action_params)
  end

  private

  def action_params
    params.permit(:actionable, :reporter, :receiver)
  end

  # def action_type
  #   byebug
  #   action_params["actionable_type"].constantize.create()
  # end

end
