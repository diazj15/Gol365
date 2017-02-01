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

ActiveRecord::Schema.define(version: 20170131215548) do

  create_table "actionlists", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actions", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "championships", force: :cascade do |t|
    t.string   "name"
    t.integer  "confederation_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "championshiptables", force: :cascade do |t|
    t.integer  "pg"
    t.integer  "wg"
    t.integer  "tg"
    t.integer  "lg"
    t.integer  "sg"
    t.integer  "rg"
    t.integer  "gd"
    t.integer  "pts"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "team_id"
    t.integer  "championship_id"
    t.integer  "category"
  end

  create_table "confederations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.text     "name"
    t.integer  "capacity"
    t.text     "city"
    t.text     "country"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "gameactions", force: :cascade do |t|
    t.integer  "action_id"
    t.integer  "game_id"
    t.integer  "team_id"
    t.integer  "minute"
    t.integer  "payer_id"
    t.text     "comments"
    t.integer  "half_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "gameplayers", force: :cascade do |t|
    t.integer  "idgame"
    t.integer  "iteam"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "type"
    t.text     "playertype"
    t.text     "position"
  end

  create_table "games", force: :cascade do |t|
    t.integer  "home_team"
    t.integer  "home_team_result"
    t.integer  "visit_team"
    t.integer  "visit_team_result"
    t.integer  "stadium"
    t.string   "datetime"
    t.string   "status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.datetime "game_date"
    t.integer  "tournament_id"
    t.integer  "points"
    t.integer  "scorepoints"
  end

  create_table "news", force: :cascade do |t|
    t.text     "title"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.text     "body"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "body_html"
    t.text     "summary"
    t.string   "slug"
    t.string   "category"
    t.string   "country"
    t.string   "championship"
    t.text     "image_link_small"
    t.text     "image_link_big"
    t.text     "video"
    t.text     "video_html"
  end

  add_index "news", ["slug"], name: "index_news_on_slug", unique: true

  create_table "playerpositions", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "players", force: :cascade do |t|
    t.text     "name"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "position"
  end

  create_table "teams", force: :cascade do |t|
    t.text     "name"
    t.text     "complete_name"
    t.string   "stadium_id"
    t.string   "integer"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "tournaments", force: :cascade do |t|
    t.text     "name"
    t.text     "country"
    t.date     "startDate"
    t.date     "endDate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "category"
    t.integer  "classifiedteams"
    t.integer  "eliminatedteams"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
