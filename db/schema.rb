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

ActiveRecord::Schema.define(version: 20151029211408) do

  create_table "driving_stats", force: :cascade do |t|
    t.integer  "miles_driven"
    t.integer  "user_id"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "driving_stats", ["user_id"], name: "index_driving_stats_on_user_id"

  create_table "earnings", force: :cascade do |t|
    t.integer  "user_id"
    t.decimal  "amount",     precision: 8, scale: 2
    t.datetime "earned_at"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "earnings", ["user_id"], name: "index_earnings_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.integer  "previous_rank"
    t.string   "car_name"
    t.string   "car_color"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
