class GrievancesController < ApplicationController

   # GET /Grievances
   def index
     @filed_grievances = current_user.filed_grievances
     json_response(@filed_grievances)
   end

   def create
     @grievance = Grievance.create!(grievance_params)
     @action = associate(@grievance)

     json_response([@grievance, @action])
   end

   private

   def grievance_params
     params.permit(:title, :description)
   end

   def find_user
     User.find(params["receiver"].to_i)
   end

end
