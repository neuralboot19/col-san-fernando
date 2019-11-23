ActiveAdmin.register About do
  permit_params :title, :description_one, :description_two, :image, :visible

  index do
    selectable_column
    id_column
    column :image do |i|
      image_tag(i.image.url(:standard))
    end
    column :title
    column :description_one
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
      f.input :description_one
      f.input :description_two
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
      row :description_one
      row :description_two
      row :visible
    end
  end
  
end
