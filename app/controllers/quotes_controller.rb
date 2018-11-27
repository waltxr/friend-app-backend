class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :update, :destroy]
  before_action :set_user, only: [:filed_index, :received_index]

   # GET users/reported_quotes
   def reported_index
     @reported_quotes = @user.reported_quotes
     json_response_cateogry(@reported_quotes)
   end
   # GET users/received_quotes
   def received_index
     @received_quotes = @user.received_quotes
     json_response_cateogry(@received_quotes)
   end

   # GET quotes/:id
   def show
     json_response_cateogry(@quote)
   end

   # POST /quotes
   def create
     @quote = current_user.reported_quotes.create!(quote_params)
     json_response_cateogry(@quote)
   end

   # PUT /quotes/:id
   def update
     @quote.update(quote_params)
     json_response_cateogry(@quote)
   end

   #DELETE /quotes/:id
   def destroy
     @quote.destroy
     head :no_content
   end

   private

   def quote_params
     params.permit(:title, :description, :receiver_id)
   end

   def set_quote
     @quote = Quote.find(params[:id])
   end

   def set_user
     @user = User.find(params[:user_id])
   end

end
