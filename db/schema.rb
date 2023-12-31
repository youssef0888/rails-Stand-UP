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

ActiveRecord::Schema[7.0].define(version: 2023_12_02_142730) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "establishments", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "type"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.text "bio"
    t.index ["user_id"], name: "index_establishments_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "establishment_id", null: false
    t.string "name"
    t.text "overview"
    t.index ["establishment_id"], name: "index_events_on_establishment_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "number_of_persons"
    t.date "date"
    t.boolean "confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.index ["event_id"], name: "index_reservations_on_event_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "profile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "establishments", "users"
  add_foreign_key "events", "establishments"
  add_foreign_key "events", "users"
  add_foreign_key "reservations", "events"
  add_foreign_key "reservations", "users"
end
