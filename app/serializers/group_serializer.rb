class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :members, serializer: ShallowUserSerializer
end
