ActiveAdmin.register Meal do

  menu parent: "Dishes"

  permit_params :title, :sort_order, :description, :price, :category_id, children_ids: []
  
  index do
    selectable_column
    column :sort_order
    column :title
    column :description
    column :price
    column :category
    column :updated_at
    actions
  end

end
