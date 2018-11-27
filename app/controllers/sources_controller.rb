class SourcesController < ApplicationController
  before_action :set_source, only: [:show, :update, :destroy]
  before_action :set_user, only: [:filed_index, :received_index]

   # GET users/reported_sources
   def cited_index
     @cited_sources = @user.cited_sources
     json_response_cateogry(@cited_sources)
   end
   
   # GET users/received_sources
   def received_index
     @received_sources = @user.received_sources
     json_response_cateogry(@received_sources)
   end

   # GET sources/:id
   def show
     json_response_cateogry(@source)
   end

   # POST /sources
   def create
     @source = current_user.cited_sources.create!(source_params)
     json_response_cateogry(@source)
   end

   # PUT /sources/:id
   def update
     @source.update(source_params)
     json_response_cateogry(@source)
   end

   #DELETE /sources/:id
   def destroy
     @source.destroy
     head :no_content
   end

   private

   def source_params
     params.permit(:title, :description, :receiver_id)
   end

   def set_source
     @source = Source.find(params[:id])
   end

   def set_user
     @user = User.find(params[:user_id])
   end

end
