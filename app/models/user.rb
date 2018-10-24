class User < ApplicationRecord
  has_many :reported_actions, :class_name => 'Action', :foreign_key => 'reporter_id'
  has_many :received_actions, :class_name => 'Action', :foreign_key =>  'receiver_id'

  #TODO: need to rethink names and behaviors of these relationshps. So far it works for grievances only, and even that model could have several receivers. don't box yourself in via architecture. 

  has_many :reported_grievances, through: :reported_actions, source: :actionable, source_type: 'Grievance'
  has_many :received_grievances, through: :received_actions, source: :actionable, source_type: 'Grievance'

  has_many :reported_lols, through: :reported_actions, source: :actionable, source_type: 'Lol'
  has_many :received_lols, through: :received_actions, source: :actionable, source_type: 'Lol'

  has_many :reported_proclamations, through: :reported_actions, source: :actionable, source_type: 'Proclamation'
  has_many :received_proclamations, through: :received_actions, source: :actionable, source_type: 'Proclamation'

  has_many :reported_quotes, through: :reported_actions, source: :actionable, source_type: 'Quote'
  has_many :received_quotes, through: :received_actions, source: :actionable, source_type: 'Quote'

  #needs better names
  has_many :reported_sources, through: :reported_actions, source: :actionable, source_type: 'Source'
  has_many :received_sources, through: :received_actions, source: :actionable, source_type: 'Source'

  has_many :reported_valid_points, through: :reported_actions, source: :actionable, source_type: 'Valid_Points'
  has_many :received_valid_points, through: :received_actions, source: :actionable, source_type: 'Valid_Points'
end
