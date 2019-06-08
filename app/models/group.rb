class Group < ApplicationRecord
  has_many :user_groups
  has_many :members, :class_name => 'User', through: :user_groups
end
