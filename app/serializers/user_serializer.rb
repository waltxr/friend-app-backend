class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bio, :filed_grievances, :received_grievances

  has_many :filed_grievances, :class_name => 'Grievance', :foreign_key => 'reporter_id'
  has_many :received_grievances, :through => :grievance_recipients, :source => :grievance
end
