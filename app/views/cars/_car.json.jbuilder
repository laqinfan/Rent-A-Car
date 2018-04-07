json.extract! car, :id, :make, :model, :year, :color, :description, :category, :mileage, :number_of_seats, :price_per_day, :created_at, :updated_at
json.url car_url(car, format: :json)
