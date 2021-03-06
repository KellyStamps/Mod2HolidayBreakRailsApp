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

ActiveRecord::Schema.define(version: 20171228155808) do

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.string "date_built"
    t.integer "city_id"
    t.integer "figure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.index ["city_id"], name: "index_buildings_on_city_id"
    t.index ["figure_id"], name: "index_buildings_on_figure_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.index ["user_id"], name: "index_cities_on_user_id"
  end

  create_table "figures", force: :cascade do |t|
    t.string "name"
    t.string "birth_date"
    t.string "death_date"
    t.string "hometown"
    t.string "profession"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "bio"
  end

  create_table "landmarks", force: :cascade do |t|
    t.string "name"
    t.string "event_date"
    t.integer "city_id"
    t.integer "figure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.index ["city_id"], name: "index_landmarks_on_city_id"
    t.index ["figure_id"], name: "index_landmarks_on_figure_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
