class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer "game_id"
      t.integer "service_id"
      t.float "price_euro"
      t.float "price_rub"
      t.integer "user_id"
      t.timestamps
    end
  end
end
