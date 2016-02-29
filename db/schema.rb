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

ActiveRecord::Schema.define(version: 20160229100216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ads", force: :cascade do |t|
    t.string   "cloudinary_public_id"
    t.integer  "competitor_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "ads", ["competitor_id"], name: "index_ads_on_competitor_id", using: :btree

  create_table "competitors", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.text     "scraping_parameters"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "dashboards", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "main_comments"
  end

  add_index "dashboards", ["user_id"], name: "index_dashboards_on_user_id", using: :btree

  create_table "follows", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "competitor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "follows", ["competitor_id"], name: "index_follows_on_competitor_id", using: :btree
  add_index "follows", ["user_id"], name: "index_follows_on_user_id", using: :btree

  create_table "pins", force: :cascade do |t|
    t.integer  "dashboard_id"
    t.integer  "ad_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "comment"
  end

  add_index "pins", ["ad_id"], name: "index_pins_on_ad_id", using: :btree
  add_index "pins", ["dashboard_id"], name: "index_pins_on_dashboard_id", using: :btree

  create_table "shares", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "dashboard_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "shares", ["dashboard_id"], name: "index_shares_on_dashboard_id", using: :btree
  add_index "shares", ["user_id"], name: "index_shares_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_url"
    t.string   "company_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "ads", "competitors"
  add_foreign_key "dashboards", "users"
  add_foreign_key "follows", "competitors"
  add_foreign_key "follows", "users"
  add_foreign_key "pins", "ads"
  add_foreign_key "pins", "dashboards"
  add_foreign_key "shares", "dashboards"
  add_foreign_key "shares", "users"
end
