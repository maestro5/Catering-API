class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.belongs_to :category, index: true
      t.string     :title
      t.integer    :sort_order
      t.text       :description
      t.float      :price
      t.string     :type
      t.integer    :children_ids, default: [], array: true

      t.timestamps null: false
    end
  end
end
