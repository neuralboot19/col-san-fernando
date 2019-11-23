class CreateAdmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :admissions do |t|
      t.string :title
      t.string :descrition_one
      t.string :description_two
      t.string :item_one
      t.string :item_two
      t.string :item_three
      t.string :item_four
      t.string :item_five
      t.string :item_six
      t.string :item_seven
      t.string :item_eight
      t.string :item_nine
      t.string :item_ten
      t.string :image
      t.boolean :visible, default: false

      t.timestamps
    end
  end
end
