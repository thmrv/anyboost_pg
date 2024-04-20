class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    change_table :users do |t|
        add_column :users, :role, :string
        add_column :users, :status, :string
        add_column :users, :rate, :string
        add_column :users, :username, :string
        add_column :users, :address, :string
        add_column :users, :omni_steam, :string
        add_column :users, :omni_discord, :string
        add_column :users, :omni_google, :string
    end
  end
end
