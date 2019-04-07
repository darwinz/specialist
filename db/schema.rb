# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190324061858) do

  create_table "complex_list_items", force: :cascade do |t|
    t.string "guid", null: false
    t.integer "list_id", null: false
    t.text "data", null: false
    t.decimal "sort_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_complex_list_items_on_list_id"
  end

  create_table "list_types", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.text "description"
    t.string "item_type", limit: 55, default: "null"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "active", default: 1, null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "guid", limit: 255, null: false
    t.string "title", limit: 255, null: false
    t.text "description"
    t.integer "list_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "active", default: 1, null: false
    t.index ["list_type_id"], name: "index_lists_on_list_type_id"
  end

  create_table "number_list_items", force: :cascade do |t|
    t.string "guid", null: false
    t.integer "list_id", null: false
    t.float "data", null: false
    t.decimal "sort_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_number_list_items_on_list_id"
  end

  create_table "string_list_items", force: :cascade do |t|
    t.string "guid", null: false
    t.integer "list_id", null: false
    t.string "data", null: false
    t.decimal "sort_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_string_list_items_on_list_id"
  end

end
