class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :grievances

  has_many :members, serializer: ShallowUserSerializer
  has_many :grievances, serializer: GrievanceSerializer
end
