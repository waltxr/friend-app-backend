class CommentSerializer < ActiveModel::Serializer
  attributes :id, :commentable_id, :body, :user

  has_many :comments

end
