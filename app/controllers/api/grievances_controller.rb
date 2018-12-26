class Api::GrievancesController < ApplicationController
  before_action :set_grievance, only: [:show, :update, :destroy]
  before_action :set_user, only: [:filed_index, :received_index]

   # GET users/filed_grievances
   def filed_index
     @filed_grievances = @user.filed_grievances
     json_response_cateogry(@filed_grievances)
   end
   # GET users/received_grievances
   def received_index
     @received_grievances = @user.received_grievances
     json_response_cateogry(@received_grievances)
   end

   # GET grievances/:id
   def show
     json_response_cateogry(@grievance)
   end

   # POST /grievances
   def create
     @grievance = current_user.filed_grievances.create!(grievance_params)
     json_response_cateogry(@grievance)
   end

   # PUT /grievances/:id
   def update
     @grievance.update(grievance_params)
     json_response_cateogry(@grievance)
   end

   #DELETE /grievances/:id
   def destroy
     @grievance.destroy
     head :no_content
   end

   private

   def grievance_params
     params.permit(:title, :description, :receiver_id)
   end

   def set_grievance
     @grievance = Grievance.find(params[:id])
   end

   def set_user
     @user = User.find(params[:user_id])
   end

end
