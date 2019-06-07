class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bio, :filed_grievances

  has_many :filed_grievances
  # has_many :grievance_recipients
  # has_many :received_grievances, :through => :grievance_recipients, :source => :grievance
end
