# == Schema Information
#
# Table name: sprints
#
#  id          :integer          not null, primary key
#  title       :string
#  started_at  :datetime
#  finished_at :datetime
#  state       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Sprint < ActiveRecord::Base
  has_many :daily_rations
end
