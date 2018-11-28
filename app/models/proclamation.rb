class Proclamation < ApplicationRecord
  include ReporterReceiver
  include Commentable

end
