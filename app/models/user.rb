class User < ApplicationRecord
  has_secure_password

  validates_presence_of :name, :email, :password_digest

  has_many :filed_grievances, :class_name => 'Grievance', :foreign_key => 'reporter_id'
  has_many :received_grievances, :class_name => 'Grievance', :foreign_key =>  'receiver_id'

  # has_many :filed_grievances, through: :reported_actions, source: :actionable, source_type: 'Grievance'
  # has_many :received_grievances, through: :received_actions, source: :actionable, source_type: 'Grievance'

  has_many :filed_lols, through: :reported_actions, source: :actionable, source_type: 'Lol'
  has_many :received_lols, through: :received_actions, source: :actionable, source_type: 'Lol'

  has_many :filed_proclamations, through: :reported_actions, source: :actionable, source_type: 'Proclamation'
  has_many :received_proclamations, through: :received_actions, source: :actionable, source_type: 'Proclamation'

  has_many :filed_quotes, through: :reported_actions, source: :actionable, source_type: 'Quote'
  has_many :received_quotes, through: :received_actions, source: :actionable, source_type: 'Quote'

  has_many :sited_sources, through: :reported_actions, source: :actionable, source_type: 'Source'
  has_many :received_sources, through: :received_actions, source: :actionable, source_type: 'Source'

  has_many :rewarded_valid_points, through: :reported_actions, source: :actionable, source_type: 'Valid_Points'
  has_many :valid_points_awarded, through: :received_actions, source: :actionable, source_type: 'Valid_Points'
end
