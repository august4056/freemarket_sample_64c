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

ActiveRecord::Schema.define(version: 2019_12_17_032015) do

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "image"
    t.text "detail"
    t.text "category"
    t.text "state"
    t.integer "delivery_fee"
    t.text "delivery_area"
    t.integer "delivery_date"
    t.integer "price"
    t.integer "fee"
    t.integer "gross_profit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "nickname", null: false
    t.string "family_name_kanji", null: false
    t.string "first_name_kanji", null: false
    t.string "family_name_kana", null: false
    t.string "first_name_kana", null: false
    t.integer "birthdate_year", null: false
    t.integer "birthdate_month", null: false
    t.integer "birthdate_day", null: false
    t.integer "phone_number", null: false
    t.string "address_family_name_kanji", null: false
    t.string "address_first_name_kanji", null: false
    t.string "address_family_name_kana", null: false
    t.string "address_first_name_kana", null: false
    t.string "address_number", null: false
    t.integer "address_prefecture", default: 0, null: false
    t.string "address_city", null: false
    t.string "address_block", null: false
    t.string "address_building"
    t.integer "address_phone_number"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
