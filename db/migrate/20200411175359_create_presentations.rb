class CreatePresentations < ActiveRecord::Migration[5.2]
  def change
    create_table :presentations do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :facebook_username
      t.string :address
      t.string :expectations

      t.timestamps
    end
    add_index :presentations, :email, unique: true
  end
end
