class AddGroupIdToGrievances < ActiveRecord::Migration[5.1]
  def change
    add_column :grievances, :group_id, :integer
  end
end
