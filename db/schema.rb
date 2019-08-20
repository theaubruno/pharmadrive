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

ActiveRecord::Schema.define(version: 2019_08_20_092922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drugs", force: :cascade do |t|
    t.bigint "list_id"
    t.string "drug_name"
    t.string "dosage"
    t.string "posology"
    t.string "quantity"
    t.string "qsp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_drugs_on_list_id"
  end

  create_table "lists", force: :cascade do |t|
    t.bigint "patient_id"
    t.string "note"
    t.datetime "prescribed_at"
    t.bigint "user_id"
    t.datetime "ready_at"
    t.boolean "delivered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_lists_on_patient_id"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.string "address"
    t.string "doctor_name"
    t.string "pharmacy_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "drugs", "lists"
  add_foreign_key "lists", "patients"
  add_foreign_key "lists", "users"
  add_foreign_key "patients", "users"
end
