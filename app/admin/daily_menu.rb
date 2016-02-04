ActiveAdmin.register DailyMenu do
  
  menu priority: 1
  
  permit_params :day_number, :max_total, dish_ids: []

end