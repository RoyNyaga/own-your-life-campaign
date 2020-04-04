class RemoveLinkediTwitter < ActiveRecord::Migration[5.2]
  def change
  	remove_column :questionaires, :twitter
  	remove_column :questionaires, :linkedin
  end
end
