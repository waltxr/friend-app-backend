class Action < ApplicationRecord
  belongs_to :reporter, :class_name => "User"
  belongs_to :receiver, :class_name => "User"
end
