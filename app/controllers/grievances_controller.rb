class GrievancesController < ApplicationController
   # GET /Grievances
   def index
     @filed_grievances = current_user.filed_grievances
     json_response_index(@filed_grievances)
   end

   # POST /Grievances
   def create
     @grievance = Grievance.create!(grievance_params)
     associate(@grievance)

     json_response_file_action(@grievance)
   end

   private

   def grievance_params
     params.permit(:title, :description)
   end

end
