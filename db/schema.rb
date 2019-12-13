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

ActiveRecord::Schema.define(version: 2019_12_13_104233) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "treatment_id"
    t.integer "price_cents"
    t.integer "group_size"
    t.integer "status"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["treatment_id"], name: "index_bookings_on_treatment_id"
  end

  create_table "centers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "contact_person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.integer "owner_id"
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.index ["imageable_type", "imageable_id"], name: "index_centers_on_imageable_type_and_imageable_id"
    t.index ["owner_id"], name: "index_centers_on_owner_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "attachment"
    t.index ["imageable_type", "imageable_id"], name: "index_photos_on_imageable_type_and_imageable_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price_cents"
    t.string "category"
    t.integer "capacity_per_hour"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "center_id"
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.index ["center_id"], name: "index_treatments_on_center_id"
    t.index ["imageable_type", "imageable_id"], name: "index_treatments_on_imageable_type_and_imageable_id"
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
    t.string "gender"
    t.string "address"
    t.string "type", default: "Customer"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "treatments"
  add_foreign_key "treatments", "centers"
end
