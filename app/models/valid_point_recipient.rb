class ValidPointRecipient < ApplicationRecord
  belongs_to :valid_point
  belongs_to :user
end
