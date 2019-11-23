class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :mobile
      t.string :email
      t.string :facebook
      t.string :instagram
      t.string :whatsapp
      t.string :address
      t.boolean :visible, default: false

      t.timestamps
    end
  end
end
