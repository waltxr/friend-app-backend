class Source < ApplicationRecord
  include ReporterReceiver
  include Commentable

end
