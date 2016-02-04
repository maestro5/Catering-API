# == Schema Information
#
# Table name: daily_menus
#
#  id         :integer          not null, primary key
#  day_number :integer
#  max_total  :float
#  dish_ids   :integer          default([]), is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe DailyMenu, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
