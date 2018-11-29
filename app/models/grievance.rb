class Grievance < ApplicationRecord
  include ReporterReceiver
  include Commentable

  belongs_to :user
  belongs_to :arbitrator, class_name: 'User', optional: true
end
