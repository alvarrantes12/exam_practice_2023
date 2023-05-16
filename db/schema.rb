ActiveRecord::Schema[7.0].define(version: 2023_05_15_190550) do
  enable_extension "plpgsql"

  create_table "comedians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "id_number"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
