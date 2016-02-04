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

class Person < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :daily_rations

  def generate_token!
    self.authentication_token = Devise.friendly_token
    save    
  end

  def destroy_token!
    self.authentication_token = nil
    save    
  end
end
