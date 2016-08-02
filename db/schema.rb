# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160802044423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.string   "day_number"
    t.integer  "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "days", ["program_id"], name: "index_days_on_program_id", using: :btree

  create_table "exercises", force: :cascade do |t|
    t.string   "exercise_name"
    t.integer  "day_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "reps"
    t.float    "weight"
    t.integer  "sets"
    t.float    "volume"
  end

  add_index "exercises", ["day_id"], name: "index_exercises_on_day_id", using: :btree

  create_table "programs", force: :cascade do |t|
    t.text     "program_name"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "programs", ["user_id"], name: "index_programs_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "workout_logs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date"
  end

  add_foreign_key "days", "programs"
  add_foreign_key "exercises", "days"
  add_foreign_key "programs", "users"
end
