module Actionable
  extend ActiveSupport::Concern

  included do
    has_one :action, :as => :actionable
    has_one :reporter, through: :action
    has_one :receiver, through: :action
  end
  
end
