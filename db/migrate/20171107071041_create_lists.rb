class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :guid, :limit => 255, null: false
      t.string :title, :limit => 255, null: false
      t.text :description
      t.references :list_type, foreign_key: true, null: false

      t.timestamps
    end
  end
end
