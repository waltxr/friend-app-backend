class User < ApplicationRecord
  has_many :reported_actions, :class_name => 'Action', :foreign_key => 'reporter_id'
  has_many :received_actions, :class_name => 'Action', :foreign_key =>  'receiver_id'
end
