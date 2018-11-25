class CreateValidPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :valid_points do |t|
      t.references :reporter
      t.references :receiver
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
