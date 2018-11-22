module ReporterReceiver

  def reporter    
    User.find(action.reporter_id)
  end

  def receiver
    User.find(action.receiver_id)
  end

  def action
    Action.find_by(actionable_id: self.id)
  end

end
