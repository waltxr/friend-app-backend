class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bio, :groups

  has_many :filed_grievances
  has_many :received_grievances

  has_many :groups
end
