class GrievanceSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :reporter, :receivers

  belongs_to :reporter, serializer: ShallowUserSerializer
  has_many :receivers, serializer: ShallowUserSerializer
  has_many :comments

end
