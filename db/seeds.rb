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
