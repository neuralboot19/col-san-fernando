ActiveAdmin.register Home do
  permit_params :title, :title_two, :image, :visible

  index do
    selectable_column
    id_column
    column :image do |i|
      image_tag(i.image.url(:standard))
    end
    column :title
    column :title_two
    column :visible
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :title_two
      f.inputs do
        f.hidden_field :image_cache
        f.file_field :image, style: "margin-left: 21%;"
      end
      f.input :visible
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :title_two
      row :image do |i|
        image_tag(i.image.url(:standard))
      end
      row :visible
    end
  end
  
end
