ActiveAdmin.register Classroom do
  permit_params :title, :descrition, :image, :visible, :position, :url_link
  
  index do
    selectable_column
    id_column
    column :image do |i|
      image_tag(i.image.url(:standard))
    end
    column :title
    column :descrition
    column :url_link
    column :visible
    column :position
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :descrition
      f.input :url_link
      f.inputs do
        f.hidden_field :image_cache
        f.file_field :image, style: "margin-left: 21%;"
      end
      f.input :visible
      f.input :position
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :descrition
      row :url_link
      row :image do |i|
        image_tag(i.image.url(:standard))
      end
      row :position
      row :visible
    end
  end
  
end
