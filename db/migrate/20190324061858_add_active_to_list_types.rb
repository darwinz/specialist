class AddActiveToListTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :list_types, :active, :tinyint, :null => false, :default => 1
  end
end
