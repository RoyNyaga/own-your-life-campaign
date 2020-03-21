class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :whatsapp_number
      t.string :facebook
      t.string :linkedin
      t.text :message

      t.timestamps
    end
  end
end
