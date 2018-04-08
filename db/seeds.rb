# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

place1 = Address.create!(street1: "1567 Front St", street2: "", city: "Memphis", state: "TN", zipcode: 38016)
place2 = Address.create!(street1: "5678 Bored Lane", street2: "", city: "Memphis", state: "TN", zipcode: 38016)

user1 = User.create!(email: "test@test.com", password: "123456")
user2 = User.create!(email: "test3@test.com", password: "678543")

car1 = Car.new(make: "Toyota", model: "Camry", year: 2017, color: "white", description: "Hello", category: "Sedan", mileage: 34500, number_of_seats: 4, price_per_day: 19.567)
car1.owner = user1
car1.pickup_location = place1
car1.save!
