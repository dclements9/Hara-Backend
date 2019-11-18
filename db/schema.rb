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

ActiveRecord::Schema.define(version: 2019_11_18_013414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "stepOne"
    t.string "stepTwo"
    t.string "stepThree"
    t.string "stepFour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "challenges_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "challenge_id", null: false
    t.index ["challenge_id", "user_id"], name: "index_challenges_users_on_challenge_id_and_user_id"
    t.index ["user_id", "challenge_id"], name: "index_challenges_users_on_user_id_and_challenge_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "lesson_id", null: false
    t.index ["lesson_id", "user_id"], name: "index_lessons_users_on_lesson_id_and_user_id"
    t.index ["user_id", "lesson_id"], name: "index_lessons_users_on_user_id_and_lesson_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.integer "age"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
