class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bio

  has_many :filed_grievances
  has_many :received_grievances
end
