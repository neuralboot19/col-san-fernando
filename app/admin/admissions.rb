ActiveAdmin.register Admission do
  permit_params :title, :descrition_one, :description_two, :item_one, :item_two, :item_three, :item_four, :item_five, :item_six, :item_seven, :item_eight, :item_nine, :item_ten, :image, :visible
  
  index do
    selectable_column
    id_column
    column :image do |i|
      image_tag(i.image.url(:standard))
    end
    column :title
    column :descrition_one
    column :description_two
    column :visible
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.inputs do
        f.hidden_field :image_cache
        f.file_field :image, style: "margin-left: 21%;"
      end
      f.input :descrition_one
      f.input :description_two
      f.input :item_one
      f.input :item_two
      f.input :item_three
      f.input :item_four
      f.input :item_five
      f.input :item_six
      f.input :item_seven
      f.input :item_eight
      f.input :item_nine
      f.input :item_ten
      f.input :visible
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :image do |i|
        image_tag(i.image.url(:standard))
      end
      row :descrition_one
      row :description_two
      row :item_one
      row :item_two
      row :item_three
      row :item_four
      row :item_five
      row :item_six
      row :item_seven
      row :item_eight
      row :item_nine
      row :item_ten
      row :visible
    end
  end
  
end
