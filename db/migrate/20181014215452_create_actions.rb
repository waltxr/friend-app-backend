class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|
      t.references :reporter, foreign_key: true
      t.references :receiver, foreign_key: true

      t.timestamps null :false
    end
    add_foreign_key :actions, :users, column: :reporter_id, primary_key: :id
    add_foreign_key :actions, :users, column: :receiver_id, primary_key: :id
  end
end
