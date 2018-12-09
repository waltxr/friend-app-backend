class CreateGrievances < ActiveRecord::Migration[5.1]
  def change
    create_table :grievances do |t|
      t.references :reporter      
      t.references :arbitrator
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
