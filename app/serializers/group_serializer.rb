class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :avatar, :grievances, :public

  has_many :members, serializer: ShallowUserSerializer
  has_many :grievances, serializer: GrievanceSerializer
end
