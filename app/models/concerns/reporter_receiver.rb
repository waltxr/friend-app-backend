module ReporterReceiver
  extend ActiveSupport::Concern

  included do
    belongs_to :grievance
    belongs_to :receiver, class_name: 'User'
  end

end
