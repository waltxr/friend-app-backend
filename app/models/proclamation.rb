class Proclamation < ApplicationRecord
  include Actionable
  include ReporterReceiver
end
