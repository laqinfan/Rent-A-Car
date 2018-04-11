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
place6 = Address.create!(street1: "1789 Avenue B", street2: "", city: "Memphis", state: "SC", zipcode: 38120)
place7 = Address.create!(street1: "1456 MyStreet St", street2: "", city: "Cordova", state: "TN", zipcode: 38016)
place8 = Address.create!(street1: "3459 Carson Lane", street2: "", city: "Memphis", state: "TN", zipcode: 38065)

user1 = User.create!(email: "test1@test.com", password: "password")
user2 = User.create!(email: "test2@test.com", password: "password")
user3 = User.create!(email: "test3@test.com", password: "password")
user4 = User.create!(email: "test4@test.com", password: "password")
user5 = User.create!(email: "test5@test.com", password: "password")

car1 = user1.cars.create!(make: "Toyota", model: "Camry", year: 2017, color: "white", description: "Hello", category: "Sedan", mileage: 34500, number_of_seats: 4, price_per_day: 19.567)
car1.locations.create!(address: place1, status: "saved")
car1.locations.create!(address: place2, status: "saved")
car1.locations.create!(address: place8, status: "current")
car1.save!

car2 = user1.cars.create!(make: "Ford", model: "Taurus", year: 2014, color: "grey", description: "Hello", category: "Sedan", mileage: 34567, number_of_seats: 4, price_per_day: 21.99)
car2.locations.create!(address: place1, status: "saved")
car2.locations.create!(address: place4, status: "current")
car2.save!

car3 = user2.cars.create!(make: "Dodge", model: "Charger", year: 2014, color: "black", description: "Hello", category: "Sports Car", mileage: 45000, number_of_seats: 4, price_per_day: 55.99)
car3.locations.create!(address: place3, status: "current")
car3.save!

car4 = user1.cars.create!(make: "Subaru", model: "Outback", year: 2015, color: "red", description: "This car is great!", category: "SUV", mileage: 56700, number_of_seats: 4, price_per_day: 34.99)
car4.locations.create!(address: place6, status: "current")
car4.locations.create!(address: place5, status: "saved")
car4.save!

car5 = user1.cars.create!(make: "BMW", model: "X5", year: 2017, color: "black", description: "This is a very nice car!", category: "Luxury Car", mileage: 34000, number_of_seats: 4, price_per_day: 75.99)
car5.locations.create!(address: place7, status: "current")
car5.save!

#Profile.create!(drivers_license: '123456789', first_name: 'Salina', last_name: 'Dutta', middle_name: 'Kumari', backgroundcheck_status: 'checked', phone: '901-875-5522', social_security: 675551122)
Profile.create!(drivers_license: '875622212', first_name: 'Anu', last_name: 'Roy', middle_name: 'Kumar', backgroundcheck_status: 'unchecked', phone: '901-255-2525', social_security: 122220222)

#Paypal.create!(paypal_id: 90887, paypal_username: 'Suioytr2', paypal_account_routing_number: 88982822)
paypal1 = Paypal.new(paypal_id: 92202, paypal_username: 'Sduytr5', paypal_account_routing_number: 12020022)

car6 = user1.cars.new(make: "Mazda", model: "CX-5", year: 2017, color: "Black", description: "Hello", category: "SUV", mileage: 500, number_of_seats: 5, price_per_day: 19.567)
car7 = user1.cars.new(make: "Mazda", model: "CX-9", year: 2018, color: "Black", description: "Hello", category: "SUV", mileage: 500, number_of_seats: 5, price_per_day: 19.567)

contract1 = Contract.new(start_date: '2018-04-01', return_date:'2018-04-03', price: '20', subtotal: '60', total: '61', status: '')
contract2 = Contract.new(start_date: '2018-04-07', return_date:'2018-04-08', price: '20', subtotal: '40', total: '40.5', status: '')

contract1.paypal = paypal1
contract2.paypal = paypal1

contract1.car = car6
contract2.car = car7

paypal1.save!
car6.save!
car7.save!

contract1.save!
contract2.save!

# contract1 = car1.contracts.create!(start_date: '2018-04-01', return_date:'2018-04-03', price: '20', subtotal: '60', total: '61', status: '')
# contract1.paypal = paypal1
# contract1.save!
# contract2 = car3.contracts.create!(start_date: '2018-04-07', return_date:'2018-04-08', price: '20', subtotal: '40', total: '40.5', status: '')
# contract2.paypal = paypal1
# contract2.save!