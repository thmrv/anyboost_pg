class CreateExtras < ActiveRecord::Migration[7.1]
  def change
    create_table :extras do |t|
      t.string "name"
      t.string "label"
      t.integer "game_id"
      t.float "price_default"
      t.integer "price_modifier"
      t.timestamps
    end
  end
end
