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

ActiveRecord::Schema.define(version: 20141202075213) do

  create_table "albums", force: true do |t|
    t.string   "name"
    t.text     "event"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.decimal  "fee",        precision: 10, scale: 0
    t.integer  "period"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenses", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.string   "name"
    t.text     "detail"
    t.decimal  "amount",     precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "album_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.text     "address"
    t.integer  "phone",           limit: 8
    t.string   "sex"
    t.date     "dob"
    t.string   "school"
    t.string   "school_class"
    t.string   "f_name"
    t.string   "f_occupation"
    t.string   "m_name"
    t.string   "m_occupation"
    t.string   "dance_school"
    t.string   "dance_teacher"
    t.integer  "dance_years"
    t.string   "g_name"
    t.string   "place"
    t.boolean  "admin",                     default: false
    t.boolean  "verified",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
