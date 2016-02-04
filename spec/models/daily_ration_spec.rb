# == Schema Information
#
# Table name: daily_rations
#
#  id            :integer          not null, primary key
#  person_id     :integer
#  daily_menu_id :integer
#  sprint_id     :integer
#  dish_id       :integer
#  price         :float
#  quantity      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe DailyRation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
