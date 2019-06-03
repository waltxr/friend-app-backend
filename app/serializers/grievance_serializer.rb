class GrievanceSerializer < ActiveModel::Serializer
  attributes :id, :reporter, :receivers, :comments

  include Commentable

  belongs_to :reporter, class_name: 'User'
  has_many :grievance_recipients
  has_many :receivers, through: :grievance_recipients, source: :user
end
