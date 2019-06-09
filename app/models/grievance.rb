class Grievance < ApplicationRecord
  include Commentable

  belongs_to :group
  belongs_to :reporter, class_name: 'User'
  has_many :grievance_recipients
  has_many :receivers, through: :grievance_recipients, source: :user

  accepts_nested_attributes_for :receivers
end
