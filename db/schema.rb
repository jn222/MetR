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

ActiveRecord::Schema.define(version: 20161030061105) do

  create_table "migrations", force: :cascade do |t|
    t.string   "add_user_to_spots"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_migrations_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "start"
    t.datetime "end"
    t.integer  "spot_id"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_id"], name: "index_reservations_on_spot_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
  end

  create_table "spots", force: :cascade do |t|
    t.integer  "price"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "username"
    t.integer  "user_id"
    t.text     "description"
    t.string   "address"
    t.index ["user_id"], name: "index_spots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",         null: false
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
