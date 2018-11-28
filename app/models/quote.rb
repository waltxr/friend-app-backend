class Quote < ApplicationRecord
  include ReporterReceiver
  include Commentable

end
