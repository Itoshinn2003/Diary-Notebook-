# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_10_30_094205) do
  create_table "diaries", id: false, force: :cascade do |t|
    t.string "user_id", limit: 20, null: false
    t.text "content", limit: 500
    t.text "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "date"], name: "index_diaries_on_user_id_and_date", unique: true
  end

  create_table "users", primary_key: "user_id", id: { type: :string, limit: 20 }, force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.string "password_digest", limit: 20, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "diaries", "users", primary_key: "user_id"
end
