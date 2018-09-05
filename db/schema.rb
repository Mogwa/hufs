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

ActiveRecord::Schema.define(version: 20180905034706) do

  create_table "campus", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commons", force: :cascade do |t|
    t.string   "condition"
    t.text     "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "depts", force: :cascade do |t|
    t.string   "type"
    t.string   "condition"
    t.text     "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graduations", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "f1"
    t.boolean  "f2"
    t.boolean  "f3"
    t.boolean  "f4"
    t.boolean  "f5"
    t.boolean  "f6"
    t.boolean  "f7"
    t.boolean  "f8"
    t.boolean  "f9"
    t.boolean  "f10"
    t.boolean  "f11"
    t.boolean  "f12"
    t.boolean  "f13"
    t.boolean  "f14"
    t.boolean  "f15"
    t.boolean  "f16"
    t.boolean  "f17"
    t.boolean  "f18"
    t.boolean  "f19"
    t.boolean  "f20"
    t.boolean  "s1"
    t.boolean  "s2"
    t.boolean  "s3"
    t.boolean  "s4"
    t.boolean  "s5"
    t.boolean  "s6"
    t.boolean  "s7"
    t.boolean  "s8"
    t.boolean  "s9"
    t.boolean  "s10"
    t.boolean  "s11"
    t.boolean  "s12"
    t.boolean  "s13"
    t.boolean  "s14"
    t.boolean  "s15"
    t.boolean  "s16"
    t.boolean  "s17"
    t.boolean  "s18"
    t.boolean  "s19"
    t.boolean  "s20"
    t.boolean  "c1"
    t.boolean  "c2"
    t.boolean  "c3"
    t.boolean  "c4"
    t.boolean  "c5"
    t.boolean  "c6"
    t.boolean  "c7"
    t.boolean  "c8"
    t.boolean  "c9"
    t.boolean  "c10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_graduations_on_user_id"
  end

  create_table "majors", force: :cascade do |t|
    t.string   "korean"
    t.string   "english"
    t.string   "homepage"
    t.integer  "campus_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campus_id"], name: "index_majors_on_campus_id"
  end

  create_table "minors", force: :cascade do |t|
    t.string   "korean"
    t.string   "english"
    t.string   "homepage"
    t.integer  "campus_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campus_id"], name: "index_minors_on_campus_id"
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "semester"
    t.string   "minor_campus"
    t.integer  "major_id"
    t.integer  "minor_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["major_id"], name: "index_profiles_on_major_id"
    t.index ["minor_id"], name: "index_profiles_on_minor_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
