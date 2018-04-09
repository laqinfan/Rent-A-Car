# == Schema Information
#
# Table name: locations
#
#  id               :integer          not null, primary key
#  status           :string
#  address_id       :integer
#  addressable_type :string
#  addressable_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Location < ApplicationRecord
    belongs_to :addressable, polymorphic: true, optional:true
    belongs_to :address
    accepts_nested_attributes_for :address

    LOCATION_STATUSES = ["current", "saved"]

    validates :status, inclusion: { in: LOCATION_STATUSES }
end
