class CreateJoinTableValidPointRecipients < ActiveRecord::Migration[5.1]
  def change
    create_table :valid_point_recipients do |t|
      t.references :valid_point
      t.references :user

      t.timestamps
    end
  end
end
