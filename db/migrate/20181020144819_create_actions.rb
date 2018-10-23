class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|
      t.references :reporter
      t.references :receiver
      t.integer :actionable_id
      t.string :actionable_type

      t.timestamps
    end
  end
end
