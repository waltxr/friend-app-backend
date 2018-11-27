class User < ApplicationRecord
  has_secure_password

  validates_presence_of :name, :email, :password_digest

  has_many :filed_grievances, :class_name => 'Grievance', :foreign_key => 'reporter_id'
  has_many :received_grievances, :class_name => 'Grievance', :foreign_key =>  'receiver_id'

  has_many :awarded_valid_points, :class_name => 'ValidPoint', :foreign_key => 'reporter_id'
  has_many :received_valid_points, :class_name => 'ValidPoint', :foreign_key => 'receiver_id'

  has_many :awarded_lols, :class_name => 'Lol', :foreign_key => 'reporter_id'
  has_many :received_lols, :class_name => 'Lol', :foreign_key => 'receiver_id'

  has_many :reported_proclamations, :class_name => 'Proclamation', :foreign_key => 'reporter_id'
  has_many :received_proclamations, :class_name => 'Proclamation', :foreign_key => 'receiver_id'

  has_many :reported_quotes, through: :class_name => 'Quote', :foreign_key => 'reporter_id'
  has_many :received_quotes, through: :class_name => 'Quote', :foreign_key => 'receiver_id'

  has_many :cited_sources, through: :class_name => 'Sources', :foreign_key => 'reporter_id'
  has_many :received_sources, through: :class_name => 'Sources', :foreign_key => 'receiver_id'

end
