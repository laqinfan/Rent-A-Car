# == Schema Information
#
# Table name: paypals
#
#  id                            :integer          not null, primary key
#  paypal_id                     :integer
#  paypal_username               :string
#  paypal_account_routing_number :integer
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#  user_id                       :integer
#
# Indexes
#
#  index_paypals_on_user_id  (user_id)
#

class Paypal < ApplicationRecord
  belongs_to :user
  has_many :owner_contracts, class_name: 'Contract', foreign_key: 'owner_paypal_id'
  has_many :renter_contracts, class_name: 'Contract', foreign_key: 'renter_paypal_id'

  scope :by_user, -> (user) { where(user: user)}

  validates :paypal_id, presence: true,  numericality: {only_integer: true, less_than_or_equal_to: 99999, greater_than_or_equal_to: 10000}, uniqueness: true
  validates :paypal_username, format: { with: /\A[a-zA-Z0-9]+\Z/ },presence: true, uniqueness: true
  validates :paypal_account_routing_number, numericality: {only_integer: true, less_than_or_equal_to: 99999999, greater_than_or_equal_to: 10000000},presence: true

end
