ActiveAdmin.register Contact do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :phone, :mobile, :email, :email_two, :facebook, :instagram, :whatsapp, :whatsapp_option, :address, :visible
  #
  # or
  #
  # permit_params do
  #   permitted = [:phone, :mobile, :email, :facebook, :instagram, :whatsapp, :address, :visible]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    selectable_column
    id_column
    column :phone
    column :mobile
    column :email
    column :visible
    column :email_two
    column :facebook
    column :instagram
    column :whatsapp
    column :whatsapp_option
    column :address
    column :visible
    actions
  end
  
end
