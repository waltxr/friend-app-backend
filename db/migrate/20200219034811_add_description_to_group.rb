class AddDescriptionToGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :description, :text
  end
end
