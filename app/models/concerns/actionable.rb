module Actionable
  extend ActiveSupport::Concern

  included do
    has_many :actions, :as => :actionable
  end
end
