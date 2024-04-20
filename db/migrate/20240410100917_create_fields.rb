class CreateFields < ActiveRecord::Migration[7.1]
  def change
    create_table :fields do |t|
      t.string "name"
      t.string "label"
      t.integer "service_id"
      t.string "field_type"
      t.integer "delta"
      t.float "price_default"
      t.string "selects", array: true, default: []
      t.timestamps
    end
  end
end
