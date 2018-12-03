class GrievanceRecipient < ApplicationRecord
  belongs_to :grievance
  belongs_to :receiver, class_name: "User"
end
