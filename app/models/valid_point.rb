class ValidPoint < ApplicationRecord
  include Commentable

  belongs_to :group
  belongs_to :reporter, class_name: 'User'
  has_many :valid_point_recipients
  has_many :receivers, through: :valid_point_recipients, source: :user

  accepts_nested_attributes_for :receivers
end
