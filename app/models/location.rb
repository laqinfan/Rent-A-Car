class Location < ApplicationRecord
    belongs_to :addressable, polymorphic: true
    belongs_to :address

    LOCATION_STATUSES = ["current", "saved"]

    validates :status, inclusion: { in: LOCATION_STATUSES }
end
