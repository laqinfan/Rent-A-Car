# Individual Assignment Specifications

- Team: Rent a Car
- Iteration: 2

## Special Roles

- Project Coordinator: Katie Bridson
- Quality Assurance Czar: Sheldon Ebron
- Video Demo Creators:
- xxx, 999
- xxx, 999 
- Demo-Booth Operator: xxx

## Tasks: Katie Bridson
### Task 1: Upload an Image
- Description: Add Carrierwave gem to project and add image upload functionality to New/Edit Car pages and New/Edit Profile page. 
- How to Evaluate: Navigate to the "New Vehicle" page (see instructions in Task: Add a Car). There should be a field to add an image. Fill in the vehicle information, upload an image from your computer, and click "Submit". Navigate to the "Details" page for the car you just created (see instructions in Task: Add a Car) and confirm the image you uploaded is displayed.
- Outcome of Task: xxx

### Task 2: Complete HTML styling using Bootstrap
- Description: Finish adding bootstrap styling to all pages from Iteration 1 which did not have styling (all the show pages or pages with mostly text) and add styling to any new pages generated in Iteration 2 which do not have styles. 
- How to Evaluate: All pages shown in the demo should have bootstrap styles which follow the same general styles as the pages that have already been styled.
- Outcome of Task: xxx

## Tasks:  Senjuti Dutta
### Task 1: Rate a Vendor
- Description: Create vendor rating(see class diagram ) base controller, seeds, validations and validation tests to rate a vendor .
- How to Evaluate: First, verify that all validation tests pass. Then, as a logged in renter, after renting a car from vendor renter can rate a vendor .There is testimony section in the middle part of the homepage there  (see UI Sketch: Homepage(Logged In)) where  renter can rate vendors on their interactions so that other users  can see this rating and can get an idea of the  vendor.
- Outcome of Task: xxx

### Task 2: Rate a Car
- Description: Create car rating(see class diagram ) base controller, seeds, validations and validation tests to rate a  vendor's car .
- How to Evaluate: First, verify that all validation tests pass. Any user before logging in can see the rating of vendors. A renter, after renting a car renter can rate the car. There is testomny section in  the middle part of the homepage  (see UI Sketch: Homepage(Logged In)) where renter can rate the car's status after renting  so that other users  can see this rating and can get an idea of the car.
- Outcome of Task: xxx

### Task 3: Update HomePage
- Description: Update 'About us' section (see UI Sketch : Homepage) and 'Safety policy' , 'Usage Policy 'section of homepage.
- How to Evaluate: In the homepage there is a section' About Us' (see UI Sketch : Homepage) that will give the information of the admin and there is safety policy section where all the safety policy of driving cars are written  sand in the usage policy section what rules and notes people should look at before driving car.
- Outcome of Task: xxx


## Tasks: Sheldon Ebron
### Task 1: Update Send Private Message between Vendor and Renter
- Description: In this update,  I will take the three controllers from the last iteration of this task and turn it into a single view where that is more user-friendly and does not require the user to know the conversation id number.  
- How to Evaluate: As a user, when on the vehicle detail page (see UI Sketch for Vehicle_details) there is a negotiation button that will take the user to the private messaging tab on the account page (see UI Sketch for  Private_Messaging). This page will display all of the user’s conversations, and when selecting a conversation, the user will be able to view and message the other user in the conversation.In addition, there will be redundancies so that user will not need to input the conversation id. 
- Outcome of Task: xxx

### Task 2: Rental History
- Description: Create a Rental History for each vehicle that creates a controller, seeds, validations, and validation tests to display a vender's car using the Review by Renter model(see class diagram) 
- How to Evaluate: As a user, when on the vehicle detail page (see UI Sketch for Vehicle_details) there will be a button that allows for a renter to view the reviews that were left for a vehicle by the previous renters. 
- Outcome of Task: xxx

### Task 3: Rate a Renter
- Description: Create a Rate a Renter model, controller, seeds, validations and validation tests to rate a vendor Review by Vender (see class diagram)  .
- How to Evaluate: As a vender, after a car is returned based on the contract the vender will be able to rate the renter.
- Outcome of Task: xxx

## Tasks: Laqin Fan
### Task 1: Show car availability using calendar
- Description: Add car availability status by checking the calendar. 
- How to Evaluate: navigate to the "My Vehicles" page. There would be "Set Car Availability" button to check car availability status. Click "Set vehicle status", which helps to create owner's car availability. These car available information can be seen in "vehicle details". 
- Outcome of Task: xxx


### Task 2: Notify by email
- Description: Add a notification function to send contract generating info to both renter and car owner. 
- How to Evaluate: Navigate to "Browse Vehicles" page, click one car and in the "vehicle details" page, after clicking "generate contract" button, our website will notify both renter and car owner by email. Navigate to "My contracts" page, click one contract and in the contract form, after clicking "approve" button, our website will notify both renter and car owner by email
- Outcome of Task: xxx


### Task 3: Create a testimonial
- Description:  Create a testimonial model, controller, _form.html.erb (+new/edit), show.html.erb, seeds, validations, validation tests. 
- How to Evaluate: Navigate to the home page to leave a testimonial/comment on the homepage about experiences with the Rent-A-Car service. Click "Read More" button, naviagte to the testimonial index page to see all the testimonials about this website. The testimonial can be created only onece. After writing a testimonial, the testimonial will be showed imediatedly on the home page. 
- Outcome of Task: xxx 



