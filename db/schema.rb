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

ActiveRecord::Schema.define(version: 20181019185827) do

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "servicerequest_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["servicerequest_id"], name: "index_comments_on_servicerequest_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "incidents", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "zip"
    t.integer "dayofweek"
    t.date "timeofday"
    t.string "state"
    t.string "incidenttype"
    t.string "drnum"
    t.string "weatherevent"
    t.string "specialevent"
    t.float "latitude"
    t.float "longitude"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicerequests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "requester_id"
    t.integer "assignee_id"
    t.string "requester_name"
    t.string "requester_phone"
    t.string "unitnumber"
    t.integer "srtype"
    t.integer "priority"
    t.text "srdescription"
    t.integer "status", default: 0
    t.string "building"
    t.string "location"
    t.string "controller"
    t.string "model"
    t.string "serialnumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uploads", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "comments", "servicerequests"
  add_foreign_key "comments", "users"
end
