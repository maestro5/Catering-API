# == Schema Information
#
# Table name: assets
#
#  id             :integer          not null, primary key
#  filename       :string
#  assetable_id   :integer
#  assetable_type :string
#  type           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Asset < ActiveRecord::Base
end
