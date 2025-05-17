# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_05_17_050429) do
  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "points", force: :cascade do |t|
    t.string "name"
    t.integer "normal"
    t.integer "winter_star"
    t.integer "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "villager_hearts", force: :cascade do |t|
    t.integer "villager_id", null: false
    t.integer "max_hearts"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["villager_id"], name: "index_villager_hearts_on_villager_id"
  end

  create_table "villager_items", force: :cascade do |t|
    t.integer "item_id"
    t.integer "villager_id"
    t.integer "point_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "villagers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "town"
    t.string "season"
    t.integer "birthday"
    t.boolean "dating"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "villager_hearts", "villagers"
end
