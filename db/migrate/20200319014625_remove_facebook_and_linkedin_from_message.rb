class RemoveFacebookAndLinkedinFromMessage < ActiveRecord::Migration[5.2]
  def change
  	remove_column :messages, :facebook
  	remove_column :messages, :linkedin
  end
end
