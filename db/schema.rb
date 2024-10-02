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

ActiveRecord::Schema[7.2].define(version: 2024_10_02_093911) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "media", force: :cascade do |t|
    t.string "title"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utm_parameters", force: :cascade do |t|
    t.bigint "medium_id", null: false
    t.string "utm_source"
    t.string "utm_campaign"
    t.string "utm_medium"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medium_id"], name: "index_utm_parameters_on_medium_id"
  end

  add_foreign_key "utm_parameters", "media"
end
