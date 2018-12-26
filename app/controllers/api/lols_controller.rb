class Api::LolsController < ApplicationController
  before_action :set_lol, only: [:show, :update, :destroy]
  before_action :set_user, only: [:awarded_index, :received_index]

  # GET users/awarded_lols
  def awarded_index
    @awarded_lols = @user.awarded_lols
    json_response_cateogry(@awarded_lols)
  end

  # GET users/received_lols
  def received_index
    @received_lols = @user.received_lols
    json_response_cateogry(@received_lols)
  end

  # Get lols/:id
  def show
    json_response_cateogry(@lol)
  end

  # POST /lols
  def create
    @lol = current_user.awarded_lols.create!(lol_params)
    json_response_cateogry(@lol)
  end

  # PUT lols/:id
  def update
    @lol.update(lol_params)
    json_response_cateogry(@lol)
  end

  # DELETE /lols/:id
  def destroy
    @lol.destroy
    head :no_content
  end

  private

  def lol_params
    params.permit(:title, :description, :receiver_id)
  end

  def set_lol
    @lol = Lol.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end
