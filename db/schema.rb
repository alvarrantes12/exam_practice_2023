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

ActiveRecord::Schema[7.0].define(version: 2023_05_19_022745) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comedians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "id_number"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.bigint "comedian_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comedian_id"], name: "index_events_on_comedian_id"
  end

  create_table "jokes", force: :cascade do |t|
    t.string "joke"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
