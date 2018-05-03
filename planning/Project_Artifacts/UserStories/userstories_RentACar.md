# User Stories

**Team:** Rent a Car

## User Registration and Profile (46 hours/8 days)

- US Register as New User
  - Description: As a user, I need to register with my email or username.
  - Dependencies: None
  - Estimate: 3 hours (½ day)
  - Priority: 1
  - Status: Completed
  - Author: Senjuti

- US Login
  - Description: As a user, I need to login to rent a car as a renter or to list cars to be rented as a vendor.
  - Dependencies: None
  - Estimate: 3 hours (½ day)
  - Priority: 1
  - Status: Completed
  - Author: Senjuti

- US Add Renter Profile Information
  - Description: As a renter, I want to add my license information and personal information to my profile, so it is on file for legal reasons.
  - Dependencies: Register, Upload an Image
  - Estimate: 12 hours (2 days)
  - Priority: 1
  - Status: Completed
  - Author: Senjuti

- US Add PayPal Information
  - Description: As a user, I want to add my PayPal payment information to my account, so I can pay for rentals or receive payment.
  - Dependencies: Register
  - Estimate: 8 hours (1½ days)
  - Priority: 1
  - Status: Completed
  - Author: Katie

- US Add a Car
  - Description: As a vendor, I want to add my car's information, so I can rent my car out.
  - Dependencies: Register, Upload an Image
  - Estimate: 12 hours (2 days)
  - Priority: 1
  - Status: Completed
  - Author: Laqin Fan

- US Upload an Image
  - Description: As a user, I want to upload an image so I can add additional information to my profile and car document.
  - Dependencies: None
  - Estimate: 8 hours (1½ days)
  - Priority: 1
  - Status: Removed [Iteration 2]
  - Author: Laqin Fan


## Finding a car(60 hours/9.5 days)

- US See Pickup Location on Map
  - Description: As a user, I would like to see locations on a map where available cars can be picked up, so that the user can know if they are close to the vendor's car.
  - Dependencies: Add a Car
  - Estimate: 12 hours (2 days)
  - Priority: 8
  - Status: Removed [Iteration 2]
  - Author: Sheldon

- US Search a Car
  - Description: As a user, I want to search available cars by location and various features, so I can find the car I want.
  - Dependencies: Add a Car
  - Estimate: 4 hours (½ day)
  - Priority: 3
  - Status: Removed (Combined into Filter Car Results)
  - Author: Laqin Fan

- US Filter Car Results
  - Description: As a user, I want to be able to filter the available car results by specific features.
  - Dependencies: Add a Car, Search for a Car
  - Estimate: 4 hours (½ day)
  - Priority: 3
  - Status: Completed
  - Author: Katie

- US Show Car Availability as Calendar
  - Description: As a user, I want to see the availability of a car as a calendar, so it is easy for me to see when the car is available.
  - Dependencies: Add a Car, Rental Contracts
  - Estimate: 16 hours (2½ days)
  - Priority: 3
  - Status: Modified (add date period as (not) available), Modified story complete. [Iteration 2]
  - Author: Senjuti

- US Send Private Message between Vendor and Renter
  - Description: As a potential renter, I want to be able to communicate with the vendor about their listing in order to ask questions or negotiate a different price.
  - Dependencies: Register
  - Estimate: 24 hours (4 days)
  - Priority: 5
  - Status: In Progress [Iteration 2]
  - Author: Katie


## Renting the car

- US Create a Rental Contract
  - Description: As a vendor, I want to create/edit a contract with the renter to rent a specific car on a specific date for a certain price.
  - Dependencies: Register, Add a car
  - Estimate: 12 hours (2 days)
  - Priority: 1
  - Status: Completed
  - Author: Katie

- US Approve/agree to Rental Contract
  - Description: As a renter, I want to view the details of my rental contract and sign.
  - Dependencies: Register, Create a Rental Contract
  - Estimate: 8 hours (1½ days)
  - Priority: 1
  - Status: Completed
  - Author: Katie

- US Pay for Rental
  - Description: As a renter, I want to be able to pay for the car I have rented via the rental contract.
  - Dependencies: Approve/agree a Rental Contract, Add PayPal information
  - Estimate: 2 hour (½ day)
  - Priority: 1
  - Status: Removed (Combined into Approve/agree to Rental Contract) [Iteration 2]
  - Author: Sheldon

- US Receive Payment for Rental
  - Description: As a vendor, I want to be able to receive payment for the car I have loaned out.
  - Dependencies: Approve/agree a Rental Contract, Add PayPal information
  - Estimate: 2 hour (½ day)
  - Priority: 1
  - Status: Removed (Combined into Approve/agree to Rental Contract) [Iteration 2]
  - Author: Sheldon


## Feedback (56 hours/ 9.5 days)

- US Create Testimonial
  - Description: As a user, I want to be able to leave a testimonial/comment on the homepage about my experiences with the Rent-A-Car service.
  - Dependencies: Register
  - Estimate: 12 hours (2 days)
  - Priority: 7
  - Status: Completed [Iteration 2]
  - Author: Katie

- US Rate a Vendor
  - Description: As a renter, I want to rate a vendor on their interactions and the car's status after I have rented from them so that other users can see this rating and can get an idea of the car and vendor.
  - Dependencies: Rental Contracts
  - Estimate: 20 hours (3½ days)
  - Priority: 3
  - Status: Completed [Iteration 2]
  - Author: Senjuti

- US Rate a Car Renter
  - Description: As a vendor, I want to rate the person who rented my car and leave a comment, so other users can review it as a reference.
  - Dependencies: Rental Contracts
  - Estimate: 16 hours (2½ days)
  - Priority: 3
  - Status: In Progress [Iteration 2]
  - Author: Laqin Fan

- US See rental history
  - Description: As a potential renter, I want to see a vendor’s rental history, I can regard it as a renting reference.
  - Dependencies: Rate a Vendor, Rate a Car Renter
  - Estimate: 8 hours (1½ days)
  - Priority: 3
  - Status: Not started
  - Author: Laqin Fan


## Notifications

- US Notify the rental status
  - Description: As a renter and vendor, I want to be notified when the rental period starts and ends, so it is clear for me when the car should be returned.
  - Dependencies: Rental Contracts
  - Estimate: 4 hours (½ Day)
  - Priority: 6
  - Status: Completed (modified to alert on new pending contract and approved contract) [Iteration 2]
  - Author: Laqin Fan

- US Notify User of Private Message
  - Description: As a user, I want to be notified if someone has sent me a private message when I am not logged in.
  - Dependencies: Private Messaging between Vendor and Renter
  - Estimate: 4 hours (½ day)
  - Priority: 6
  - Status: Removed [Iteration 2]
  - Author: Katie

- US Notify User of Mandatory Review
  - Description: As a user, I want to be notified if I have a review to complete for a previous rental.
  - Dependencies: Rate a Vendor, Rate a Car Renter
  - Estimate: 4 hours (½ day)
  - Priority: 6
  - Status: Removed (Combined into modified Notify the rental status) [Iteration 2]
  - Author: Katie

- US Push Notification over SMS (Short Message Service)
  - Description: As a user or vendor, I want to receive notifications about my car status using SMS, because I need to know information about my account and prefer SMS notifications.
  - Dependencies: Private Messaging between Vendor and Renter
  - Estimate: 12 hours (2 days)
  - Priority: 8
  - Status: Removed [Iteration 2]
  - Author: Sheldon

- US Push Notification over Email
  - Description: As a user or vendor, I want to receive notifications about my car status using email, because I need to know information about my account and prefer email.
  - Dependencies: Private Messaging between Vendor and Renter
  - Estimate: 12 hours (2 days)
  - Priority: 6
  - Status: Completed [Iteration 2]
  - Author: Sheldon

