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

ActiveRecord::Schema.define(version: 2018_10_05_003734) do

  create_table "credit_notes", force: :cascade do |t|
    t.date "credit_note_creation_date"
    t.integer "credit_note_informed_gross_amount"
    t.string "credit_note_sii_status"
    t.integer "receipt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receipt_id"], name: "index_credit_notes_on_receipt_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "bank"
    t.date "statement_date"
    t.text "description"
    t.integer "credit"
    t.integer "commission"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "place_name"
    t.string "place_address"
    t.string "place_commune"
    t.string "place_city"
    t.string "place_contact_name"
    t.string "place_contact_cellphone"
    t.string "place_contact_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer "place_id"
    t.integer "wash_type_id"
    t.integer "vehicle_size_id"
    t.integer "price_gross_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_prices_on_place_id"
    t.index ["vehicle_size_id"], name: "index_prices_on_vehicle_size_id"
    t.index ["wash_type_id"], name: "index_prices_on_wash_type_id"
  end

  create_table "receipts", force: :cascade do |t|
    t.date "receipt_creation_date"
    t.integer "receipt_informed_gross_amount"
    t.integer "receipt_total_discount_amount"
    t.integer "receipt_sii_status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_receipts_on_user_id"
  end

  create_table "reconciliations", force: :cascade do |t|
    t.integer "payment_id"
    t.integer "receipt_id"
    t.integer "amount_assigned_from_payment_to_receipt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payment_id"], name: "index_reconciliations_on_payment_id"
    t.index ["receipt_id"], name: "index_reconciliations_on_receipt_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "cell_phone"
    t.date "birthday"
    t.string "rut"
    t.string "city"
    t.string "place"
    t.boolean "credit_card_registered_status"
    t.string "transbank_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicle_sizes", force: :cascade do |t|
    t.string "vehicle_size_code"
    t.string "vehicle_size_name"
    t.string "vehicle_size_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "patent"
    t.integer "size"
    t.string "type"
    t.string "brand"
    t.string "model"
    t.string "color"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

  create_table "wash_types", force: :cascade do |t|
    t.string "wash_type_code"
    t.string "wash_type_name"
    t.string "wash_type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "washers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_washers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_washers_on_reset_password_token", unique: true
  end

  create_table "washes", force: :cascade do |t|
    t.date "wash_date"
    t.integer "vehicle_id"
    t.integer "wash_type"
    t.integer "washer_id"
    t.integer "wash_discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "payment_id"
    t.index ["payment_id"], name: "index_washes_on_payment_id"
    t.index ["vehicle_id"], name: "index_washes_on_vehicle_id"
    t.index ["washer_id"], name: "index_washes_on_washer_id"
  end

end
