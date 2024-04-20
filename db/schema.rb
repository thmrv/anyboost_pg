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

ActiveRecord::Schema[7.1].define(version: 2024_04_15_230734) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "rating_types", ["rank", "elo", "mix"]

  create_table "administrators", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "remember_token"
    t.datetime "remember_token_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extras", force: :cascade do |t|
    t.string "name"
    t.string "label"
    t.integer "game_id"
    t.float "price_default"
    t.integer "price_modifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.string "label"
    t.integer "service_id"
    t.string "field_type"
    t.integer "delta"
    t.float "price_default"
    t.string "selects", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "logo_url"
    t.string "logo_small_url"
    t.string "logo_light_url"
    t.string "preview_image_url"
    t.string "preview_image_light_url"
    t.enum "rating_type", default: "rank", null: false, enum_type: "rating_types"
    t.boolean "enabled", default: false
    t.boolean "pickable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "game_id"
    t.integer "service_id"
    t.float "price_euro"
    t.float "price_rub"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.integer "game_id"
    t.string "icon_url"
    t.string "name"
    t.float "baseline_price"
    t.integer "rank_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "game_id"
    t.string "service_type"
    t.boolean "enabled"
    t.boolean "hidden"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "support_articles", force: :cascade do |t|
    t.text "content"
    t.string "title"
    t.string "subtitle"
    t.string "slug"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "role"
    t.string "status"
    t.string "rate"
    t.string "username"
    t.string "address"
    t.string "omni_steam"
    t.string "omni_discord"
    t.string "omni_google"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
