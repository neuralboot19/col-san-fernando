class AddWhatsappOptionToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :whatsapp_option, :string
  end
end
