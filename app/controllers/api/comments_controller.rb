class Api::CommentsController < ApplicationController

  def create
    @comment = @commentable.comments.(comment_params)
    @comment.user = current_user
    @comment.save
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
