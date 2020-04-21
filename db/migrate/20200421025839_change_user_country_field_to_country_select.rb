class ChangeUserCountryFieldToCountrySelect < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :user_country, :country_select
  end
end
