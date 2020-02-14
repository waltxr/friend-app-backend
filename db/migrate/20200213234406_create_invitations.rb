class CreateInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :invitations do |t|
      t.integer :group_id
      t.integer :sender_id
      t.integer :receiver_id
      t.string :message
      t.boolean :accepted

      t.timestamps
    end
  end
end
