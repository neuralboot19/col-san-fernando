class AddVisibleToAbouts < ActiveRecord::Migration[5.2]
  def change
    add_column :abouts, :visible, :boolean, default: false
  end
end
