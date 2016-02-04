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

class DailyRation < ActiveRecord::Base
  belongs_to :person
  belongs_to :daily_menu
  belongs_to :sprint
  belongs_to :dish
end
