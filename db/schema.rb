ActiveRecord::Schema[7.0].define(version: 2023_04_10_021003) do
  enable_extension "plpgsql"
  
  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.string "location"
    t.text "bio"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concerts", force: :cascade do |t|
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.decimal "silver_ticket_price"
    t.decimal "gold_ticket_price"
    t.decimal "platinum_ticket_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "singer_id", null: false
    t.bigint "venue_id", null: false
    t.index ["singer_id"], name: "index_concerts_on_singer_id"
    t.index ["venue_id"], name: "index_concerts_on_venue_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "seat_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "concert_id", null: false
    t.index ["concert_id"], name: "index_reservations_on_concert_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "singers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "image_url"
    t.text "bio"
    t.string "music_genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "img_url"
    t.boolean "is_admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.string "location"
    t.integer "platinum_seats_count"
    t.integer "gold_seats_count"
    t.integer "silver_seats_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "company_id", null: false
    t.index ["company_id"], name: "index_venues_on_company_id"
  end

  add_foreign_key "concerts", "singers"
  add_foreign_key "concerts", "venues"
  add_foreign_key "reservations", "concerts"
  add_foreign_key "reservations", "users"
  add_foreign_key "venues", "companies"
end
