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

ActiveRecord::Schema.define(version: 2021_10_17_092942) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "ads", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.string "property_type"
    t.float "area"
    t.integer "price"
    t.string "city"
    t.string "description"
    t.string "pic1"
    t.string "pic2"
    t.string "pic3"
    t.string "pic4"
    t.string "phone_no"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "purpose"
    t.integer "bed"
    t.integer "bath"
    t.boolean "electricity"
    t.boolean "electricity_backup"
    t.boolean "mosque"
    t.boolean "community_gym"
    t.boolean "parking_space"
    t.boolean "nearby_school"
    t.boolean "nearby_hospital"
    t.boolean "security_staff"
    t.boolean "featured_ad", default: false
    t.string "state", default: "running"
    t.boolean "deleted", default: false
    t.string "Land_Area"
  end

  create_table "favourite_ads", force: :cascade do |t|
    t.integer "user_id"
    t.integer "ad_id"
    t.datetime "created_at"
    t.datetime "update_at"
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
    t.string "address"
    t.string "city"
    t.string "cnic_no"
    t.string "cnic_image"
    t.string "phone_no"
    t.string "profile_image"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
