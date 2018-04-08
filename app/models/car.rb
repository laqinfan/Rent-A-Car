# == Schema Information
#
# Table name: cars
#
#  id              :integer          not null, primary key
#  make            :string
#  model           :string
#  year            :integer
#  color           :string
#  description     :string
#  category        :string
#  mileage         :string
#  number_of_seats :integer
#  price_per_day   :decimal(10, 2)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  address_id      :integer
#  user_id         :integer
#

class Car < ApplicationRecord
    before_save :round_price

    belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
    belongs_to :pickup_location, class_name: 'Address', foreign_key: 'address_id'

    VEHICLE_CATEGORIES = ["SUV", "Truck", "Sedan", "Van", "Coupe", "Wagon", "Convertible", "Sports Car", "Diesal", "Crossover", "Luxury Car", "Hybrid/Electric", "Other"]
    
    validates :make, :model, :year, :color, :description, :category, :mileage, :number_of_seats, :price_per_day, presence: true
    validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 1900, less_than_or_equal_to: Date.current.year + 1 }
    validates :category, inclusion: { in: VEHICLE_CATEGORIES }
    validates :mileage, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 300000 }
    validates :number_of_seats, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 7 }
    validates :price_per_day, format: { with: /\A\d{1,4}(.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 10000 }

    private
    def round_price
        self.price_per_day = price_per_day.to_f.round(2)
    end
end
