
ActiveRecord::Schema.define(version: 2) do

  create_table "school_classes", force: :cascade do |t|
    t.string  "title"
    t.integer "room_number"
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
