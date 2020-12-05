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

ActiveRecord::Schema.define(version: 2019_02_10_170828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type", null: false
    t.string "title", null: false
    t.string "description", null: false
    t.string "location", null: false
    t.string "duration"
    t.integer "intensity"
    t.integer "price"
    t.string "api_reference"
    t.string "api_source"
    t.datetime "time"
    t.string "picture"
    t.string "link"
  end

  create_table "actions_trips", force: :cascade do |t|
    t.bigint "action_id"
    t.bigint "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action_id"], name: "index_actions_trips_on_action_id"
    t.index ["trip_id"], name: "index_actions_trips_on_trip_id"
  end

  create_table "authentications", force: :cascade do |t|
    t.string "uid"
    t.string "token"
    t.string "provider"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_authentications_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title", null: false
    t.string "description", null: false
    t.json "pictures"
    t.string "course_provider", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "link"
    t.text "locations", default: [], array: true
    t.integer "cost"
    t.integer "duration"
  end

  create_table "courses_trips", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.bigint "trip_id"
    t.index ["course_id"], name: "index_courses_trips_on_course_id"
    t.index ["trip_id"], name: "index_courses_trips_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.string "interest"
    t.string "encrypted_password", limit: 128
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

  add_foreign_key "actions_trips", "actions"
  add_foreign_key "actions_trips", "trips"
  add_foreign_key "authentications", "users"
  add_foreign_key "courses_trips", "courses"
  add_foreign_key "courses_trips", "trips"
  add_foreign_key "trips", "users"
end
