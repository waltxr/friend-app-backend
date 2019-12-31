class RemoveReceiverIdFromValidPoints < ActiveRecord::Migration[5.1]
  def change
    remove_column :valid_points, :receiver_id, :integer
  end
end
