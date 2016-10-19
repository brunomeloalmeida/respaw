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

ActiveRecord::Schema.define(version: 20161019174425) do

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
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "cr"
    t.string   "cd"
    t.string   "res"
    t.string   "acc"
    t.string   "cr_awake"
    t.string   "cd_awake"
    t.string   "res_awake"
    t.string   "acc_awake"
    t.string   "avatar_awake_file_name"
    t.string   "avatar_awake_content_type"
    t.integer  "avatar_awake_file_size"
    t.datetime "avatar_awake_updated_at"
  end

  create_table "my_monsters", force: :cascade do |t|
    t.integer  "monster_id"
    t.integer  "summoner_id"
    t.integer  "level"
    t.integer  "hp_base"
    t.integer  "hp_rune"
    t.integer  "atk_base"
    t.integer  "atk_rune"
    t.integer  "def_base"
    t.integer  "def_rune"
    t.integer  "vel_base"
    t.integer  "vel_rune"
    t.string   "cr"
    t.string   "cd"
    t.string   "res"
    t.string   "acc"
    t.string   "runes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "awake"
    t.integer  "star"
  end

  add_index "my_monsters", ["monster_id"], name: "index_my_monsters_on_monster_id", using: :btree
  add_index "my_monsters", ["summoner_id"], name: "index_my_monsters_on_summoner_id", using: :btree

  create_table "summoners", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "summoners", ["email"], name: "index_summoners_on_email", unique: true, using: :btree
  add_index "summoners", ["reset_password_token"], name: "index_summoners_on_reset_password_token", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "user_name"
    t.integer  "level"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "summoner_id"
  end

  add_index "users", ["summoner_id"], name: "index_users_on_summoner_id", using: :btree

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "my_monsters", "monsters"
  add_foreign_key "my_monsters", "summoners"
  add_foreign_key "users", "summoners"
end
