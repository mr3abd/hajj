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

ActiveRecord::Schema.define(version: 20180802030203) do

  create_table "handbooks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "icon_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pin_worships", force: :cascade do |t|
    t.string "title"
    t.decimal "lat"
    t.decimal "lng"
    t.string "img_url"
    t.string "info_text"
    t.integer "worship_id"
    t.string "reference"
    t.string "vicinity"
    t.string "name"
    t.string "icon"
    t.string "types"
    t.integer "formatted_phone_number"
    t.string "formatted_address"
    t.string "address_components"
    t.string "rating"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sicknesses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.text "title"
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
    t.integer "sickness_id"
    t.string "sick"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "worships", force: :cascade do |t|
    t.string "days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
