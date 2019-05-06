class CommentsController < ApplicationController

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    json_response_comment(@comment)
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
