class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|
      t. references :reporter
      t. references :receiver

      t.timestamps
    end
  end
end
