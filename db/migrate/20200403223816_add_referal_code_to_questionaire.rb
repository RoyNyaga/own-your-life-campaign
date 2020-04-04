class AddReferalCodeToQuestionaire < ActiveRecord::Migration[5.2]
  def change
  	add_column :questionaires, :referral_code, :string
  end
end
