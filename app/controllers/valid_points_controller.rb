class ValidPointsController < ApplicationController
  before_action :set_valid_point, only: [:show, :update, :destroy]
  before_action :set_user, only: [:awarded_index, :received_index]

   # GET users/awarded_valid_points
   def awarded_index
     @awarded_valid_points = @user.awarded_valid_points
     json_response_cateogry(@awarded_valid_points)
   end
   # GET users/received_valid_points
   def received_index
     @received_valid_points = @user.received_valid_points
     json_response_cateogry(@received_valid_points)
   end

   # GET valid_points/:id
   def show
     json_response_cateogry(@valid_point)
   end

   # POST /valid_points
   def create
     @valid_point = current_user.awarded_valid_points.create!(valid_point_params)
     json_response_cateogry(@valid_point)
   end

   # PUT /valid_points/:id
   def update
     @valid_point.update(valid_point_params)
     json_response_cateogry(@valid_point)
   end

   # DELETE /valid_points/:id
   def destroy
     @valid_point.destroy
     head :no_content
   end

   private

   def valid_point_params
     params.permit(:title, :description, :receiver_id)
   end

   def set_valid_point
     @valid_point = ValidPoint.find(params[:id])
   end

   def set_user
     @user = User.find(params[:user_id])
   end

end
