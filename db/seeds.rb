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
communication2.sender = user1
communication2.reciever = user2
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
place6 = Address.create!(street1: "1789 Avenue B", street2: "", city: "Charleston", state: "SC", zipcode: 38120)
place7 = Address.create!(street1: "1456 MyStreet St", street2: "", city: "Cordova", state: "TN", zipcode: 38016)
place8 = Address.create!(street1: "3459 Carson Lane", street2: "", city: "Memphis", state: "TN", zipcode: 38065)

alice = User.create!(email: "alice@gmail.com", password: "password")
bob = User.create!(email: "bob@gmail.com", password: "password")
carmen = User.create!(email: "carmen@gmail.com", password: "password")
dan = User.create!(email: "dan@gmail.com", password: "password")
elliot = User.create!(email: "elliot@gmail.com", password: "password")

car1 = alice.cars.create!(make: "Toyota", model: "Camry", year: 2017, color: "white", description: "This car still has that new car smell!", category: "Sedan", mileage: 34500, number_of_seats: 4, price_per_day: 19.567)
car1.locations.create!(address: place5, status: "saved")
car1.locations.create!(address: place2, status: "saved")
car1.locations.create!(address: place8, status: "current")
car1.save!

car2 = alice.cars.create!(make: "Ford", model: "Taurus", year: 2014, color: "grey", description: "This is a very practical car.", category: "Sedan", mileage: 34567, number_of_seats: 4, price_per_day: 21.99)
car2.locations.create!(address: place5, status: "saved")
car2.locations.create!(address: place4, status: "current")
car2.save!

car3 = bob.cars.create!(make: "Dodge", model: "Charger", year: 2014, color: "black", description: "This car is fantastic!", category: "Sports Car", mileage: 45000, number_of_seats: 4, price_per_day: 55.99)
car3.locations.create!(address: place3, status: "current")
car3.save!

car4 = carmen.cars.create!(make: "Subaru", model: "Outback", year: 2015, color: "red", description: "This car is great!", category: "SUV", mileage: 56700, number_of_seats: 4, price_per_day: 34.99)
car4.locations.create!(address: place6, status: "current")
car4.locations.create!(address: place5, status: "saved")
car4.save!

car5 = carmen.cars.create!(make: "BMW", model: "X5", year: 2017, color: "black", description: "This is a very nice car!", category: "Luxury Car", mileage: 34000, number_of_seats: 4, price_per_day: 75.99)
car5.locations.create!(address: place7, status: "current")
car5.save!

profile1 = alice.create_profile!(drivers_license: '123456789', first_name: 'Alice', last_name: 'Fredericks', middle_name: 'Gina', backgroundcheck_status: 'checked', phone: '901-875-5522', social_security: 675551122)
profile2 = bob.create_profile!(drivers_license: '875622212', first_name: 'Bob', last_name: 'Henry', middle_name: 'Ian', backgroundcheck_status: 'checked', phone: '901-255-2525', social_security: 122220222)
profile3 = carmen.create_profile!(drivers_license: '975624532', first_name: 'Carmen', last_name: 'Jones', middle_name: 'Kelly', backgroundcheck_status: 'checked', phone: '901-456-2525', social_security: 127650279)
profile4 = dan.create_profile!(drivers_license: '675626782', first_name: 'Dan', last_name: 'Larson', middle_name: 'Mason', backgroundcheck_status: 'checked', phone: '901-371-2537', social_security: 234650242)
profile5 = elliot.create_profile!(drivers_license: '315624532', first_name: 'Elliot', last_name: 'Newman', middle_name: 'Olsen', backgroundcheck_status: 'checked', phone: '901-295-9125', social_security: 145650228)

paypal1 = alice.create_paypal!(paypal_id: 92202, paypal_username: 'alicefredericks', paypal_account_routing_number: 12020022)
paypal2 = bob.create_paypal!(paypal_id: 78954, paypal_username: 'bobhenry', paypal_account_routing_number: 14567022)
paypal3 = carmen.create_paypal!(paypal_id: 56783, paypal_username: 'carmenjones', paypal_account_routing_number: 76542398)
paypal4 = dan.create_paypal!(paypal_id: 23765, paypal_username: 'danlarson', paypal_account_routing_number: 34872678)
paypal5 = elliot.create_paypal!(paypal_id: 92345, paypal_username: 'elliotnewman', paypal_account_routing_number: 14598367)

car6 = dan.cars.create!(make: "Mazda", model: "CX-5", year: 2017, color: "Black", description: "This is a very fast car!", category: "Sports Car", mileage: 500, number_of_seats: 5, price_per_day: 19.567)
car6.locations.create!(address: place7, status: "current")
car6.save!

car7 = dan.cars.create!(make: "Mazda", model: "CX-9", year: 2018, color: "Black", description: "This is the newest top of the line model!", category: "Sports Car", mileage: 500, number_of_seats: 5, price_per_day: 19.567)
car7.locations.create!(address: place7, status: "current")
car7.save!

contract1 = car1.contracts.new(start_date: '2018-04-01', return_date:'2018-04-03', price: car1.price_per_day, status: 'pending')
contract1.owner_paypal = contract1.car.owner.paypal
contract1.renter_paypal = bob.paypal
contract1.save!

contract2 = car3.contracts.new(start_date: '2018-04-07', return_date:'2018-04-08', price: car3.price_per_day, status: 'pending')
contract2.owner_paypal = contract2.car.owner.paypal
contract2.renter_paypal = bob.paypal
contract2.save!

testimonial1 = dan.testimonials.create!(rating: 4, comment: "This is an amazing website.")
testimonial1.save!
testimonial2 = elliot.testimonials.create!(rating: 5, comment: "I will recommend it to my friends.")
testimonial2.save!

aval1 = car4.availabilities.create!(start: '2018-04-07', end:'2018-04-08', status: "Available")
aval1.save!
aval2 = car5.availabilities.create!(start: '2018-05-07', end:'2018-05-18', status: "Available")
aval2.save!
