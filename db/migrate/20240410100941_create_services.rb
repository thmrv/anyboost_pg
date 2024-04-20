class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string "name"
      t.integer "game_id"
      t.string "service_type"
      t.boolean "enabled"
      t.boolean "hidden"
      t.timestamps
    end
  end
end
