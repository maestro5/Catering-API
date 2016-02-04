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

require 'rails_helper'

RSpec.describe Sprint, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
