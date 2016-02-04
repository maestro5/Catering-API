# == Schema Information
#
# Table name: dishes
#
#  id           :integer          not null, primary key
#  category_id  :integer
#  title        :string
#  sort_order   :integer
#  description  :text
#  price        :float
#  type         :string
#  children_ids :integer          default([]), is an Array
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Dish < ActiveRecord::Base
  belongs_to :category
  has_many :daily_rations
end
