class AddActiveToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :active, :tinyint, :null => false, :default => 1
  end
end
