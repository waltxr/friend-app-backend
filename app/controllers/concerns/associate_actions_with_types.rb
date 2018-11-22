module AssociateActionsWithTypes
  def associate(type)
    Action.create!(:reporter => current_user, :receiver => find_receiver, :actionable => type)
  end

  def find_receiver
    User.find(params["receiver"].to_i)
  end
end
