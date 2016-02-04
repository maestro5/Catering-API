ActiveAdmin.register Person do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  menu priority: 4

  permit_params :email, :name, :password, :password_confirmation

  index do
    column :name
    column :email
    actions
  end

  form do |f|
    f.inputs 'Person' do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
