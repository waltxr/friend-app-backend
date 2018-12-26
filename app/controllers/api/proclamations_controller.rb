class Api::ProclamationsController < ApplicationController
  before_action :set_proclamation, only: [:show, :update, :destroy]
  before_action :set_user, only: [:reported_index, :received_index]
   # GET users/reported_proclamations
   def reported_index
     @reported_proclamations = @user.reported_proclamations
     json_response_cateogry(@reported_proclamations)
   end
   # GET users/received_proclamations
   def received_index
     @received_proclamations = @user.received_proclamations
     json_response_cateogry(@received_proclamations)
   end

   # GET proclamations/:id
   def show
     json_response_cateogry(@proclamation)
   end

   # POST /proclamations
   def create
     @proclamation = current_user.reported_proclamations.create!(proclamation_params)
     json_response_cateogry(@proclamation)
   end

   # PUT /proclamations/:id
   def update
     @proclamation.update(proclamation_params)
     json_response_cateogry(@proclamation)
   end

   #DELETE /proclamations/:id
   def destroy
     @proclamation.destroy
     head :no_content
   end

   private

   def proclamation_params
     params.permit(:title, :description, :receiver_id)
   end

   def set_proclamation
     @proclamation = Proclamation.find(params[:id])
   end

   def set_user
     @user = User.find(params[:user_id])
   end

end
