class CreateListTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :list_types do |t|
      t.string :name, :limit => 255, null: false
      t.text :description
      t.string :item_type, :limit => 55, :default => :null

      t.timestamps
    end
  end
end
