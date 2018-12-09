class CreateGrievanceRecipients < ActiveRecord::Migration[5.1]
  def change
    create_table :grievance_recipients do |t|
      t.references :grievance
      t.references :user

      t.timestamps
    end
  end
end
