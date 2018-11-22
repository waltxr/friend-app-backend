module AssociateActionsWithTypes
  def associate(type)
    Action.create!(:reporter => current_user, :receiver => find_user, :actionable => type)
  end
end
