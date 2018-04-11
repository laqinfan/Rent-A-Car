# == Schema Information
#
# Table name: profiles
#
#  id                     :integer          not null, primary key
#  drivers_license        :string
#  first_name             :string
#  last_name              :string
#  middle_name            :string
#  backgroundcheck_status :string
#  phone                  :string
#  social_security        :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  user_id                :integer
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#

class Profile < ApplicationRecord

  belongs_to :user, class_name: 'User', foreign_key: 'user_id', optional: true

  validates :drivers_license, length: { is: 9 },  uniqueness: true,  presence: true
  validates :first_name, length: { maximum: 20 }, presence: true
  validates :last_name, length: { maximum: 20 }, presence: true
  validates :middle_name, allow_blank: true, length: { maximum: 10 }
  validates :backgroundcheck_status, inclusion: { in: ['checked', 'processing', 'unchecked'] }, presence: true
  validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Not a valid 10-digit telephone number" },  presence: true
  validates :social_security, numericality: { only_integer: true, less_than_or_equal_to: 999999999, greater_than_or_equal_to: 100000000 }, presence: true

end
