class AddPositionToClassroom < ActiveRecord::Migration[5.2]
  def change
    add_column :classrooms, :position, :boolean, default: false
    add_column :classrooms, :url_link, :string
  end
end
