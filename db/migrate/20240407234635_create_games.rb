class CreateGames < ActiveRecord::Migration[7.1]
  create_enum "rating_types", ["rank", "elo", "mix"]
  def change
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
  end
end
