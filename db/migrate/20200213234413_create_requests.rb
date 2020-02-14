class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :group_id
      t.integer :user_id
      t.integer :approver_id
      t.string :message
      t.boolean :approved

      t.timestamps
    end
  end
end
