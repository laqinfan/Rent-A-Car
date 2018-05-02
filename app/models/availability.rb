# == Schema Information
#
# Table name: availabilities
#
#  id         :integer          not null, primary key
#  start      :string
#  end        :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  car_id     :integer
#
# Indexes
#
#  index_availabilities_on_car_id  (car_id)
#

class Availability < ApplicationRecord

    belongs_to :car

    CAR_STATUS = ["Available", "Unavailable"]

    scope :by_owner, -> (user) { where(user: Availability.car.owner)}


    validates :start, presence: true#, format: { with: /\d{4}-[0-1]\d-[0-3]\d/, message: "must be of format  YYYY-MM-DD"}
    validates :end, presence: true#, format: { with: /\d{4}-[0-1]\d-[0-3]\d/, message: "must be of format  YYYY-MM-DD"}
end
