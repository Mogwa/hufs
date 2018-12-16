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

ActiveRecord::Schema.define(version: 20181123150759) do

  create_table "campuses", force: :cascade do |t|
    t.string   "name"
    t.string   "english"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
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
    t.text     "start_year"
    t.text     "end_year"
    t.text     "information"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "globals", force: :cascade do |t|
    t.string   "condition"
    t.text     "start_year"
    t.text     "end_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graduations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "first_points"
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
    t.boolean  "f21"
    t.boolean  "f22"
    t.boolean  "f23"
    t.boolean  "f24"
    t.boolean  "f25"
    t.boolean  "f26"
    t.boolean  "f27"
    t.boolean  "f28"
    t.boolean  "f29"
    t.boolean  "f30"
    t.boolean  "f31"
    t.boolean  "f32"
    t.boolean  "f33"
    t.boolean  "f34"
    t.boolean  "f35"
    t.boolean  "f36"
    t.boolean  "f37"
    t.boolean  "f38"
    t.boolean  "f39"
    t.boolean  "f40"
    t.integer  "second_points"
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
    t.boolean  "s21"
    t.boolean  "s22"
    t.boolean  "s23"
    t.boolean  "s24"
    t.boolean  "s25"
    t.boolean  "s26"
    t.boolean  "s27"
    t.boolean  "s28"
    t.boolean  "s29"
    t.boolean  "s30"
    t.boolean  "s31"
    t.boolean  "s32"
    t.boolean  "s33"
    t.boolean  "s34"
    t.boolean  "s35"
    t.boolean  "s36"
    t.boolean  "s37"
    t.boolean  "s38"
    t.boolean  "s39"
    t.boolean  "s40"
    t.integer  "common_points"
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
    t.boolean  "c11"
    t.boolean  "c12"
    t.boolean  "c13"
    t.boolean  "c14"
    t.boolean  "c15"
    t.boolean  "c16"
    t.boolean  "c17"
    t.boolean  "c18"
    t.boolean  "c19"
    t.boolean  "c20"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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
    t.string   "type"
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "major_campus"
    t.string   "minor_campus"
    t.string   "study_type"
    t.string   "role",         default: "user", null: false
    t.integer  "major_id"
    t.integer  "minor_id"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["major_id"], name: "index_profiles_on_major_id"
    t.index ["minor_id"], name: "index_profiles_on_minor_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "seouls", force: :cascade do |t|
    t.string   "condition"
    t.text     "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
