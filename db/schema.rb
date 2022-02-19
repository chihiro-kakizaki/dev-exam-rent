ActiveRecord::Schema.define(version: 2022_02_17_232112) do

  create_table "nearest_stations", force: :cascade do |t|
    t.string "line"
    t.string "station"
    t.string "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "property_id", null: false
    t.index ["property_id"], name: "index_nearest_stations_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.string "address"
    t.string "age"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "nearest_stations", "properties"
end
