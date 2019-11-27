class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.string :title
      t.string :descrition
      t.string :image
      t.boolean :visible, default: false

      t.timestamps
    end
  end
end
