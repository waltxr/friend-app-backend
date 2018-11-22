class Source < ApplicationRecord
  include Actionable
  include ReporterReceiver
end
