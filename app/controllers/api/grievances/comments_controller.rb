class Api::Grievances::CommentsController < CommentsController
  before_action :set_commentable

  private

  def set_commentable
    @commentable = Grievance.find(params[:grievance_id])
  end
end
