class Grievance < ApplicationRecord
  include Actionable
  include ReporterReceiver
end
