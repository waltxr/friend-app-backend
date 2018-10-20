class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.integer :action_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
