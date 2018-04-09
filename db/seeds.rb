# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

place1 = Address.create!(street1: "1567 Front St", street2: "", city: "Memphis", state: "TN", zipcode: 38016)
place2 = Address.create!(street1: "5678 Bored Lane", street2: "", city: "Memphis", state: "TN", zipcode: 38016)
place3 = Address.create!(street1: "1234 Fleet St", street2: "", city: "Memphis", state: "TN", zipcode: 38016)
place4 = Address.create!(street1: "6543 Carsick Lane", street2: "", city: "Memphis", state: "TN", zipcode: 38016)
place5 = Address.create!(street1: "4567 Magnolia Place", street2: "", city: "Memphis", state: "TN", zipcode: 38016)

user1 = User.create!(email: "test1@test.com", password: "password")
user2 = User.create!(email: "test2@test.com", password: "password")
user3 = User.create!(email: "test3@test.com", password: "password")
user4 = User.create!(email: "test4@test.com", password: "password")
user5 = User.create!(email: "test5@test.com", password: "password")

car1 = user1.cars.create!(make: "Toyota", model: "Camry", year: 2017, color: "white", description: "Hello", category: "Sedan", mileage: 34500, number_of_seats: 4, price_per_day: 19.567)
car1.locations.create!(address: place1, status: "saved")
car1.locations.create!(address: place2, status: "current")
car1.save!

car2 = user1.cars.create!(make: "Ford", model: "Taurus", year: 2014, color: "grey", description: "Hello", category: "Sedan", mileage: 34567, number_of_seats: 4, price_per_day: 21.99)
car2.locations.create!(address: place1, status: "current")
car2.save!

car3 = user2.cars.create!(make: "Dodge", model: "Charger", year: 2014, color: "black", description: "Hello", category: "Sports Car", mileage: 45000, number_of_seats: 4, price_per_day: 55.99)
car3.locations.create!(address: place3, status: "current")
car3.save!
