class CreateDailyRations < ActiveRecord::Migration
  def change
    create_table :daily_rations do |t|
      t.belongs_to :person,     index: true
      t.belongs_to :daily_menu, index: true
      t.belongs_to :sprint,     index: true
      t.belongs_to :dish,       index: true
      t.float      :price
      t.integer    :quantity

      t.timestamps null: false
    end
  end
end