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

ActiveRecord::Schema.define(version: 20160721112349) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "monsters", force: :cascade do |t|
    t.string   "name"
    t.string   "element"
    t.integer  "star"
    t.integer  "hp_base"
    t.integer  "atk_base"
    t.integer  "def_base"
    t.integer  "vel_base"
    t.integer  "hp_awake"
    t.integer  "atk_awake"
    t.integer  "def_awake"
    t.integer  "vel_awake"
    t.integer  "high_essence_elemental"
    t.integer  "mid_essence_elemental"
    t.integer  "low_essence_elemental"
    t.integer  "high_essence_magic"
    t.integer  "mid_essence_magic"
    t.integer  "low_essence_magic"
    t.string   "runes"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "user_name"
    t.string   "email"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
