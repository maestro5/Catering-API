ActiveAdmin.register Dish do
  menu priority: 2

  permit_params :title, :sort_order, :description, :price, :category_id, children_ids: []

  index do
    _dishes = Dish.all.group_by{ |category| category.category_id }
    Category.all.each do |category|
      h3 category.title
      #table_for category.dishes do |t|
      table_for _dishes[category.id] do
        column :sort_order
        column :title
        column :description
        column :price
        column :category
        column :updated_at
        actions
      end
    end
  end
  
end