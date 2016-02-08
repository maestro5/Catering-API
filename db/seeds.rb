#Admin user
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') unless AdminUser.find_by(email: 'admin@example.com')

#Devise admin user
Person.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', name: 'bob')


Category.create!(title: "Soups", sort_order: 1)
Category.create!(title: "Drinks", sort_order: 2)
Category.create!(title: "Business lunches", sort_order: 3)

Meal.create!(category_id: 2, title: "Puer", sort_order: 4, description: "tea puer", price: 37.77)
Meal.create!(category_id: 1, title: "Borch", sort_order: 1, description: "nice good food", price: 20.0)
Meal.create!(category_id: 2, title: "Pepsi", sort_order: 1, description: "Join the Pepsi People (Feeling Free) 1977–1980", price: 10.55)
Meal.create!(category_id: 2, title: "Spooky Halloween Drinks", sort_order: 2, description: "Spooky", price: 19.99)
Meal.create!(category_id: 1, title: "Black Halloween Punch", sort_order: 3, description: "smoke punch with heand", price: 6.66)

BusinessLunch.create!(category_id: 3, title: "Halloween lunch", sort_order: 1, description: "Halloween punch and drink.", price: 21.99)
Dish.create!(category_id: 2, title: "Vodyara", sort_order: 7, description: "danger drink", price: 19.99)

DailyMenu.create!(day_number: 1, max_total: 30.0, dish_ids: [1, 5])
DailyMenu.create!(day_number: 2, max_total: 50.0, dish_ids: [2, 3, 6])
DailyMenu.create!(day_number: 3, max_total: 50.0, dish_ids: [1, 4, 5])
DailyMenu.create!(day_number: 4, max_total: 50.0, dish_ids: [2, 3, 6])
DailyMenu.create!(day_number: 5, max_total: 20.0, dish_ids: [1, 2, 3, 4, 5, 6])

Sprint.create!(title: "Halloween week", started_at: "2016-02-07 09:00:00", finished_at: "2016-02-13 23:00:00", state: 1)
