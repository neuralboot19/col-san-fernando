class AddTitleTwoToHome < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :title_two, :string
  end
end
