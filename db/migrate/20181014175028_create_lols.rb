class CreateLols < ActiveRecord::Migration[5.1]
  def change
    create_table :lols do |t|
      t.references :reporter
      t.references :receiver
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
