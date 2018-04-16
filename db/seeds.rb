# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(
   :email                 => "admin1@xxxxx.xxx",
   :password              => "123456",
   :password_confirmation => "123456"
)

user2 = User.new(
   :email                 => "admin2@xxxxx.xxx",
   :password              => "123456",
   :password_confirmation => "123456"
)

conversation1 = Conversation.new()
communication1 = Communication.new()
communication2 = Communication.new()
communication3 = Communication.new()

message1 = Message.new( user_name: "Sheldon", message: "Sup")
message2 = Message.new( user_name: "Margaret", message: "Sup")
message3 = Message.new( user_name: "Sheldon", message: "Man I look good")
message4 = Message.new( user_name: "Magaret", message: "Shutup JR.")


conversation1.user1 = user1
conversation1.user2 = user2

communication1.message = message1
communication2.message = message2
communication3.message = message3

communication1.sender = user1
communication1.reciever = user2

communication2.sender = user2
communication2.reciever = user1

communication3.sender = user1
communication3.reciever = user2

communication1.conversation= conversation1
communication2.conversation= conversation1
communication3.conversation= conversation1

message1.save!
message2.save!
message3.save!
message4.save!




communication1.save!
communication2.save!
communication3.save!


conversation1.save!


user1.save!
user2.save!
place1 = Address.create!(street1: "1568 Front St", street2: "", city: "Memphis", state: "TN", zipcode: 38016)
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
car1.locations.create!(address: place5, status: "saved")
car1.locations.create!(address: place2, status: "saved")
car1.locations.create!(address: place8, status: "current")
car1.save!

car2 = user1.cars.create!(make: "Ford", model: "Taurus", year: 2014, color: "grey", description: "Hello", category: "Sedan", mileage: 34567, number_of_seats: 4, price_per_day: 21.99)
car2.locations.create!(address: place5, status: "saved")
car2.locations.create!(address: place4, status: "current")
car2.save!

car3 = user2.cars.create!(make: "Dodge", model: "Charger", year: 2014, color: "black", description: "Hello", category: "Sports Car", mileage: 45000, number_of_seats: 4, price_per_day: 55.99)
car3.locations.create!(address: place3, status: "current")
car3.save!

car4 = user3.cars.create!(make: "Subaru", model: "Outback", year: 2015, color: "red", description: "This car is great!", category: "SUV", mileage: 56700, number_of_seats: 4, price_per_day: 34.99)
car4.locations.create!(address: place6, status: "current")
car4.locations.create!(address: place5, status: "saved")
car4.save!

car5 = user3.cars.create!(make: "BMW", model: "X5", year: 2017, color: "black", description: "This is a very nice car!", category: "Luxury Car", mileage: 34000, number_of_seats: 4, price_per_day: 75.99)
car5.locations.create!(address: place7, status: "current")
car5.save!

profile1 = user1.create_profile!(drivers_license: '123456789', first_name: 'Salina', last_name: 'Dutta', middle_name: 'Kumari', backgroundcheck_status: 'checked', phone: '901-875-5522', social_security: 675551122)
profile2 = user2.create_profile!(drivers_license: '875622212', first_name: 'Anu', last_name: 'Roy', middle_name: 'Kumar', backgroundcheck_status: 'unchecked', phone: '901-255-2525', social_security: 122220222)

paypal1 = user1.create_paypal!(paypal_id: 92202, paypal_username: 'test1paypal', paypal_account_routing_number: 12020022)
paypal1 = user2.create_paypal!(paypal_id: 78954, paypal_username: 'test2paypal', paypal_account_routing_number: 14567022)

car6 = user1.cars.create!(make: "Mazda", model: "CX-5", year: 2017, color: "Black", description: "Hello", category: "Sports Car", mileage: 500, number_of_seats: 5, price_per_day: 19.567)
car6.locations.create!(address: place7, status: "current")
car6.save!

car7 = user1.cars.create!(make: "Mazda", model: "CX-9", year: 2018, color: "Black", description: "Hello", category: "Sports Car", mileage: 500, number_of_seats: 5, price_per_day: 19.567)
car7.locations.create!(address: place7, status: "current")
car7.save!

contract1 = car6.contracts.new(start_date: '2018-04-01', return_date:'2018-04-03', price: '20', subtotal: '60', total: '61', status: 'pending')
contract1.owner_paypal = contract1.car.owner.paypal
contract1.renter_paypal = user2.paypal
contract1.save!

contract2 = car7.contracts.new(start_date: '2018-04-07', return_date:'2018-04-08', price: '20', subtotal: '40', total: '40.5', status: 'pending')
contract2.owner_paypal = contract2.car.owner.paypal
contract2.renter_paypal = user2.paypal
contract2.save!
