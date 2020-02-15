class AddPublicToGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :public, :boolean
  end
end
