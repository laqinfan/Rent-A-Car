# User Stories

**Team:** Rent a Car

## User Registration and Profile (46 hours/8 days)

- US Register as New User
  - Description: As a user, I need to register with my email or username.
  - Dependencies: None
  - Tasks: Devise
  - Attributes: Email, username, password (hashed)
  - Estimate: 3 hours (½ Day)
  - Priority: 1
  - Status: Not started
  - Author: Senjuti

- US Login
  - Description: As a user, I need to login to rent a car as a renter or to list cars to be rented as a vendor.
  - Dependencies: None
  - Tasks: Devise
  - Estimate: 3 hours ( ½ Day)
  - Priority: 1
  - Status: Not started
  - Author: Senjuti

- US Add Renter Profile Information
  - Description: As a renter, I want to add my license information and personal information to my profile, so it is on file for legal reasons.
  - Dependencies: User Registration
  - Tasks: RenterProfile model, controller, _form.html.erb (+new/edit), show.html.erb, seeds, validations, validation tests
  - Attributes: name, address, phone, ssn, driver license, background check status, user_id
  - Estimate:12 hours ( 2 Day)
  - Priority: 1
  - Status: Not started
  - Author: Senjuti

- US Add PayPal Information
  - Description: As a user, I want to add my PayPal payment information to my account, so I can pay for rentals or receive payment.
  - Dependencies: User Registration
  - Tasks: PayPal model, controller, _form.html.erb (+new/edit), show.html.erb, seeds, validations, validation tests
  - https://launchschool.com/blog/basic-paypal-checkout-processing-in-rails
  - Attributes: PayPal email, routing number, user_id
  - Estimate: 8 hours ( 1 1/2 Day)
  - Priority: 1
  - Status: Not started
  - Author: Katie

- US Add a Car
  - Description: As a vendor, I want to add my car's information, so I can rent my car out.
  - Dependencies: User Registration
  - Tasks: Car model, PickupLocation model, controller, _form.html.erb (+new/edit), show.html.erb, seeds., validations, validation tests
  - Attributes: Car(make, model, year, color, car type (suv, coupe, ...), seats, mileage, registration info img, insurance img, car outside img, car inside img, blurb, priceperday, vendor(user_id)), PickupLocation(Address, latitude, longitude, car_id), Address(street, city, state, zip)
  - Estimate: 12 hours  ( 2 Day)
  - Priority: 1
  - Status: Not started
  - Author: Laqin Fan

- US Upload an Image
  - Description: As a user, I want to upload an image so I can add additional information to my profile and car document.
  - Dependencies:
  - Tasks: upload image functionality
  - https://rubyplus.com/articles/4961-File-Upload-using-Carrierwave-in-Rails-5-1
  - Estimate: 8 hours ( 1 ½ Day)
  - Priority: 1
  - Status: Not started
  - Author: Laqin Fan


## Finding a car(60 hours/9.5 days)

- US See Pickup Location on Map
  - Description: As a user, I would like to see locations on a map where available cars can be picked up, so that the user can know if they are close to the vendor's car.
  - Dependencies: Add a Car
  - Tasks: embed Google Maps and plot Pickup Location info
  - Estimate: 12 hours ( 2 Day)
  - Priority: 8
  - Status: Not started
  - Author: Sheldon

- US Search a Car
  - Description: As a user, I want to search available cars by location and various features, so I can find the car I want.
  - Dependencies: Add a Car
  - Tasks: edit Car controller, browse_cars.html.erb
  - Estimate: 4 hours ( ½ Day)
  - Priority: 3
  - Status: Not started
  - Author: Laqin Fan

- US Filter Car Results
  - Description: As a user, I want to be able to filter the available car results by specific features.
  - Dependencies: Add a Car, Search for a Car
  - Tasks: edit Car controller, browse_cars.html.erb
  - Estimate: 4 hours ( ½ Day)
  - Priority: 3
  - Status: Not started
  - Author: Katie

- US Show Car Availability as Calendar
  - Description: As a user, I want to see the availability of a car as a calendar, so it is easy for me to see when the car is available.
  - Dependencies: Add a Car, Rental Contracts
  - Tasks: Availability model, controller, set_availability.html.erb, show_availability.html.erb, seeds, validations, validation tests
  - Attributes: date, status (days whitelist by vendor, edited by rental contract)
  - Estimate: 16 hours ( 2 ½ Day)
  - Priority: 3
  - Status: Not started
  - Author: Senjuti

- US Send Private Message between Vendor and Renter
  - Description: As a potential renter, I want to be able to communicate with the vendor about their listing in order to ask questions or negotiate a different price.
  - Dependencies: Login, Register
  - Tasks: Conversation model, Message model, controllers,
  - Attributes: conversation(user1, user2), message(user, body)
  - Estimate: 24 hours ( 4 Day)
  - Priority: 5
  - Status: Not started
  - Author: Katie


## Renting the car

- US Create a Rental Contract
  - Description: As a vendor, I want to create/edit a contract with the renter to rent a specific car on a specific date for a certain price.
  - Dependencies: Login, Register, Add a car
  - Tasks: Contract model, controller, _form.html.erb (+new/edit), show.html.erb, seeds, validations, validation tests
  - Attributes: start date, return date, vendor paypal (id), renter paypal (id), car(id) price, approved status
  - Estimate: 12 hours ( 2 day)
  - Priority: 1
  - Status: Not started
  - Author: Katie

- US Approve/agree to Rental Contract
  - Description: As a renter, I want to view the details of my rental contract and sign.
  - Dependencies: Login, Register, Create a Rental Contract
  - Tasks: edit Contract controller, approve.html.erb
  - Estimate: 8 hours( 1 ½ Day)
  - Priority: 1
  - Status: Not started
  - Author: Katie

- US Pay for Rental
  - Description: As a renter, I want to be able to pay for the car I have rented via the rental contract.
  - Dependencies: Approve/agree a Rental Contract, Add PayPal information
  - Estimate: 2 hour (½ Day)
  - Priority: 1
  - Status: Not started
  - Author: Sheldon

- US Receive Payment for Rental
  - Description: As a vendor, I want to be able to receive payment for the car I have loaned out.
  - Dependencies: Approve/agree a Rental Contract, Add PayPal information
  - Estimate: 2 hour ( ½ Day)
  - Priority: 1
  - Status: Not started
  - Author: Sheldon


## Feedback

- US Create a Rental Contract
  - Description: As a vendor, I want to create/edit a contract with the renter to rent a specific car on a specific date for a certain price.
  - Dependencies: Login, Register, Add a car
  - Tasks: Contract model, controller, _form.html.erb (+new/edit), show.html.erb, seeds, validations, validation tests
  - Attributes: start date, return date, vendor paypal (id), renter paypal (id), car(id) price, approved status
  - Estimate: 12 hours ( 2 day)
  - Priority: 1
  - Status: Not started
  - Author: Katie

- US Approve/agree to Rental Contract
  - Description: As a renter, I want to view the details of my rental contract and sign.
  - Dependencies: Login, Register, Create a Rental Contract
  - Tasks: edit Contract controller, approve.html.erb
  - Estimate: 8 hours( 1 ½ Day)
  - Priority: 1
  - Status: Not started
  - Author: Katie

- US Pay for Rental
  - Description: As a renter, I want to be able to pay for the car I have rented via the rental contract.
  - Dependencies: Approve/agree a Rental Contract, Add PayPal information
  - Estimate: 2 hour (½ Day)
  - Priority: 1
  - Status: Not started
  - Author: Sheldon

- US Receive Payment for Rental
  - Description: As a vendor, I want to be able to receive payment for the car I have loaned out.
  - Dependencies: Approve/agree a Rental Contract, Add PayPal information
  - Estimate: 2 hour ( ½ Day)
  - Priority: 1
  - Status: Not started
  - Author: Sheldon

## Feedback (56 hours/ 9.5 days)

- US Create Testimonial
  - Description: As a user, I want to be able to leave a testimonial/comment on the homepage about my experiences with the Rent-A-Car service.
  - Dependencies: Login, Register
  - Tasks: Testimonial model
  - Attributes: comment, user_id(renter only)
  - Estimate: 12 hours ( 2 day)
  - Priority: 7
  - Status: Not started
  - Author: Katie

- US Rate a Vendor
  - Description: As a renter, I want to rate a vendor on their interactions and the car's status after I have rented from them so that other users can see this rating and can get an idea of the car and vendor.
  - Dependencies: None
  - Tasks: Rating model
  - Attributes: VendorRating(rating, comment, renter(user_id), vendor(user_id)), CarRating(rating, comment, renter(user_id), car(car_id)), ReviewByRenter(renter(user_id), vendor_rating, car_rating, status)
  - Estimate: 20 hours( 3 ½ Days)
  - Priority: 3
  - Status: Not started
  - Author: Senjuti

- US Rate a Car Renter
  - Description: As a vendor, I want to rate the person who rented my car and leave a comment, so other users can review it as a reference.
  - Dependencies: Rent a car
  - Tasks:
  - Attributes: RenterRating(rating, comment, review(review_by_vendor_id), renter(user_id)), ReviewByVendor(vendor(user_id), status)
  - Estimate: 16 hours(2 1/2 Day)
  - Priority: 3
  - Status: Not started
  - Author: Laqin Fan

- US See rental history
  - Description: As a potential renter, I want to see a vendor’s rental history, I can regard it as a renting reference.
  - Dependencies: Rate a Car Renter
  - Tasks: vendor_ratings.html.erb, car_ratings.html.erb, renter_ratings.html.erb
  - Attributes: RenterRating(rating, comment, vendor(user_id), renter(user_id))
  - Estimate: 8 hours(1 1/2 Day)
  - Priority: 3
  - Status: Not started
  - Author: Laqin Fan


## Notifications

- US Notify the rental status
  - Description: As a renter and vendor, I want to be notified when the rental period starts and ends, so it is clear for me when the car should be returned.
  - Dependencies: Create a Rental Contract, Approve/agree to Rental Contract
  - Tasks: Notification model, controller, notifications.html.erb
  - Attributes: Notification(user_id, content, status)
  - Estimate: 4 hours (1/2 Day)
  - Priority: 6
  - Status: Not started
  - Author: Laqin Fan

- US Notify User of Private Message
  - Description: As a user, I want to be notified if someone has sent me a private message when I am not logged in.
  - Dependencies: Private Messaging between Vendor and Renter
  - Tasks: edit Notification model
  - Estimate: 4 hours(1/2 day)
  - Priority: 6
  - Status: Not started
  - Author: Katie

- US Notify User of Mandatory Review
  - Description: As a user, I want to be notified if I have a review to complete for a previous rental.
  - Dependencies: Rate a Vendor, Rate a Car Renter
  - Tasks: edit Notification model
  - Estimate: 4 hours (1/2 day)
  - Priority: 6
  - Status: Not started
  - Author: Katie

- US Push Notification over SMS (Short Message Service)
  - Description: As a user or vendor, I want to receive notifications about my car status using SMS, because I need to know information about my account and prefer SMS notifications.
  - Dependencies: Private Messaging between Vendor and Renter
  - Tasks: edit Notification model
  - https://www.twilio.com/docs/tutorials/server-notifications-ruby-rails#creating-a-custom-alert-message
  - Estimate: 12 hours(2 day)
  - Priority: 8
  - Status: Not started
  - Author: Sheldon

- US Push Notification over Email
  - Description: As a user or vendor, I want to receive notifications about my car status using email, because I need to know information about my account and prefer email.
  - Dependencies: Private Messaging between Vendor and Renter
  - Tasks: edit Notification model
  - http://guides.rubyonrails.org/action_mailer_basics.html
  - Estimate: 12 hours ( 2 day)
  - Priority: 6
  - Status: Not started
  - Author: Sheldon

