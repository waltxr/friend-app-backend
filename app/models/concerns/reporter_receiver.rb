module ReporterReceiver
  extend ActiveSupport::Concern

  included do
    belongs_to :reporter, class_name: 'User'
    belongs_to :receiver, class_name: 'User'
  end

end
