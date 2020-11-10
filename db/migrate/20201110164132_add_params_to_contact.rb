class AddParamsToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :email_two, :string
  end
end
