class Group < ApplicationRecord
  has_many :user_groups
  has_many :members, through: :user_groups, source: :user
  has_many :grievances
  has_many :valid_points
end
