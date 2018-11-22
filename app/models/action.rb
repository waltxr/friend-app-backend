class Action < ApplicationRecord
  belongs_to :actionable, :polymorphic => true
  belongs_to :reporter, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  def associate(type)
    self.actionable = type
  end

end
