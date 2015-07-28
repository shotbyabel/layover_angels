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

ActiveRecord::Schema.define(version: 20150728210508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "layovers", force: :cascade do |t|
    t.string   "a_date"
    t.string   "a_time"
    t.string   "customs"
    t.integer  "luggage"
    t.string   "a_airport"
    t.string   "a_terminal"
    t.string   "flight"
    t.string   "airline"
    t.string   "d_airport"
    t.string   "d_time"
    t.string   "d_terminal"
    t.integer  "max_time"
    t.string   "goal"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "photo"
    t.text     "bio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
