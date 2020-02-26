class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :name, :string
    add_column :users, :user_country, :string
    add_column :users, :phone, :string
    add_column :users, :payment_status, :boolean, :default => false
  end
end
