class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.string :email
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
