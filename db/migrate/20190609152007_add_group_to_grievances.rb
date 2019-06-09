class AddGroupToGrievances < ActiveRecord::Migration[5.1]
  def change
    add_reference :grievances, :group, foreign_key: true
  end
end
