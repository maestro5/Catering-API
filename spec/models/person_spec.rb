# == Schema Information
#
# Table name: people
#
#  id                   :integer          not null, primary key
#  email                :string           default(""), not null
#  encrypted_password   :string           default(""), not null
#  remember_created_at  :datetime
#  sign_in_count        :integer          default(0), not null
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :inet
#  last_sign_in_ip      :inet
#  failed_attempts      :integer          default(0), not null
#  locked_at            :datetime
#  name                 :string
#  password_salt        :string
#  authentication_token :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'rails_helper'

RSpec.describe Person, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
