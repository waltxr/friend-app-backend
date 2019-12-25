class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :grievances

  has_many :members, serializer: ShallowUserSerializer
end
