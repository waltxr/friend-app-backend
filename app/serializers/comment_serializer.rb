class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comments

  belongs_to  :commentable, polymorphic: true
  belongs_to :user

  has_many :comments, as: :commentable
end
