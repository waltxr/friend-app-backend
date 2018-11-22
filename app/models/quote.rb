class Quote < ApplicationRecord
  include Actionable
  include ReporterReceiver
end
