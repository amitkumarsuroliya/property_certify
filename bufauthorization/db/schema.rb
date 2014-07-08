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

ActiveRecord::Schema.define(version: 20140622165342) do

  create_table "attendances", force: true do |t|
    t.string   "rating"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "businesses", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "email"
    t.string   "phone"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "startDate"
    t.string   "endDate"
    t.string   "flyer"
    t.string   "tickets"
    t.string   "description"
    t.string   "guestList"
    t.string   "entertainment"
    t.string   "cover"
    t.string   "dressCode"
    t.string   "ageLimit"
    t.string   "category"
    t.string   "fbID"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facebook_oauth_settings", force: true do |t|
    t.string   "access_token"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "image"
    t.string   "dob"
    t.string   "gender"
    t.string   "zip"
    t.string   "phoneNumber"
    t.string   "deviceUuid"
    t.boolean  "isActive"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipCode"
    t.string   "phone"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "hours"
    t.boolean  "bottleService"
    t.boolean  "ticketSales"
    t.string   "closingTime"
    t.boolean  "parking"
    t.string   "gpsLocX"
    t.string   "gpsLocY"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
