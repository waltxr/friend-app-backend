class GrievanceSerializer < ActiveModel::Serializer
  attributes :id, :reporter, :receivers

  belongs_to :reporter, serializer: ShallowUserSerializer
  has_many :receivers, serializer: ShallowUserSerializer
  has_many :comments

end
