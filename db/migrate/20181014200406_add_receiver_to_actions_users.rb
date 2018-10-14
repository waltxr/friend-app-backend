class AddReceiverToActionsUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :actions_users, :receiver, :integer
  end
end
