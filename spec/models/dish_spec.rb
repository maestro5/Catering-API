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

require 'rails_helper'

RSpec.describe Dish, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
