class CreateValidPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :valid_points do |t|
      t.integer :action_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
