class GrievanceRecipient < ApplicationRecord
  belongs_to :grievance
  belongs_to :user
end
