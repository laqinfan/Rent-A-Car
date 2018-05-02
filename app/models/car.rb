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
#  user_id         :integer
#
# Indexes
#
#  index_cars_on_user_id  (user_id)
#

class Car < ApplicationRecord
    include Filterable

    before_save :round_price, :color_case

    belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
    has_many :contracts
    has_many :locations, as: :addressable
    has_many :addresses, through: :locations
    accepts_nested_attributes_for :locations
    has_many :ratings , class_name: 'CarRating', foreign_key: 'car_rating_id'

    VEHICLE_CATEGORIES = ["SUV", "Truck", "Sedan", "Van", "Coupe", "Wagon", "Convertible", "Sports Car", "Diesal", "Crossover", "Luxury Car", "Hybrid/Electric", "Other"]
    
    validates :make, :model, :year, :color, :description, :category, :mileage, :number_of_seats, :price_per_day, presence: true
    validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 1900, less_than_or_equal_to: Date.current.year + 1 }
    validates :category, inclusion: { in: VEHICLE_CATEGORIES }
    validates :mileage, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 300000 }
    validates :number_of_seats, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 7 }
    validates :price_per_day, format: { with: /\A\d{1,4}(.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 10000 }

    scope :by_make, -> (make) { where(make: make)}
    scope :by_color, -> (color) { where(color: color) }
    scope :by_category, -> (category) { where(category: category)}
    scope :by_pickup_location_zipcode, -> (zipcode) { joins(:pickup_addresses).merge(Address.by_zipcode(zipcode)) }
    
    has_many :current_locations, -> { current_locations }, foreign_key: :addressable_id, class_name: 'Location'
    has_many :pickup_addresses, through: :current_locations, source: :address

    def make_model
        "#{make} #{model}"
    end

    private
    def round_price
        self.price_per_day = price_per_day.to_f.round(2)
    end

    def color_case
        self.color.downcase!
    end
end
