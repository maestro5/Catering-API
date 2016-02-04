ActiveAdmin.register Category do
  menu priority: 3
  
  permit_params :title, :sort_order

  index do
    selectable_column
    column :title
    column :sort_order
    column :updated_at
    actions
  end

  
end
