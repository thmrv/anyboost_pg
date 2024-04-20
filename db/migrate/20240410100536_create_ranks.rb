class CreateRanks < ActiveRecord::Migration[7.1]
  def change
    create_table :ranks do |t|
      t.integer "game_id"
      t.string "icon_url"
      t.string "name"
      t.float "baseline_price"
      t.integer "rank_rating", null: true # Valorant-specific
      t.timestamps
    end
  end
end
