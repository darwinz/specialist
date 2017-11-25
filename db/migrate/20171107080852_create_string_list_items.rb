class CreateStringListItems < ActiveRecord::Migration[5.1]
  def change
    create_table :string_list_items do |t|
      t.string :guid, null: false
      t.references :list, foreign_key: true, null: false
      t.string :data, null: false
      t.numeric :sort_number, null: false

      t.timestamps
    end
  end
end
