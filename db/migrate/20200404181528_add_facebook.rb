class AddFacebook < ActiveRecord::Migration[5.2]
  def change
  	add_column :questionaires, :facebook, :string
  end
end
