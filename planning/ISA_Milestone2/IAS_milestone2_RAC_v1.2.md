# Individual Assignment Specifications

- Team: Rent a Car
- Iteration: 2

## Special Roles

- Project Coordinator: Katie Bridson
- Quality Assurance Czar: Sheldon Ebron
- Video Demo Creators:
  - Senjuti Dutta
  - Laqin Fan
- Demo-Booth Operator: Katie Bridson

## Tasks: Katie Bridson
### Task 1: Upload an Image
- Description: Add Carrierwave gem to project and add image upload functionality to New/Edit Car pages and New/Edit Profile page. 
- How to Evaluate: Navigate to the "New Vehicle" page (see instructions in Task: Add a Car). There should be a field to add an image. Fill in the vehicle information, upload an image from your computer, and click "Submit". Navigate to the "Details" page for the car you just created (see instructions in Task: Add a Car) and confirm the image you uploaded is displayed.
- Outcome of Task: Although having an image of each car would be nice, with the time limitations, we decided to focus on making sure all the features we had were working and the entire site looked nice. We ended up having so much functionality it is hard to demo it all in 10 minutes. This task was moved out of the project scope.

### Task 2: Complete HTML styling using Bootstrap
- Description: Finish adding bootstrap styling to all pages from Iteration 1 which did not have styling (all the show pages or pages with mostly text) and add styling to any new pages generated in Iteration 2 which do not have styles. 
- How to Evaluate: All pages shown in the demo should have bootstrap styles which follow the same general styles as the pages that have already been styled.
- Outcome of Task: All the pages from Iteration 1 tasks not previously styled (mostly show pages and index pages, but some forms of contracts, profile/paypal, car details) were styled using the Bootswatch Minty theme. Iteration 2 pages that were merged into the project by Tuesday night were styled in time for the final demo (related to reviews, availability, but not private messaging).

## Tasks:  Senjuti Dutta
### Task 1: Rate a Vendor
- Description: Create vendor rating(see class diagram ) base controller, seeds, validations and validation tests to rate a vendor .
- How to Evaluate: First, verify that all validation tests pass. Then, as a logged in renter, after renting a car from vendor renter can rate a vendor .There is testimony section in the middle part of the homepage there  (see UI Sketch: Homepage(Logged In)) where  renter can rate vendors on their interactions so that other users  can see this rating and can get an idea of the  vendor.
- Outcome of Task: The vendor rating model is associated with owner and user and contracts so when the contract is approved by the owner only then the renter can rent a car.The renter can give his/her feedback about the owner after renting cars where other users can see owner ratings given by all renters and only the renter who has given feedbacks he/she can see all of his/her ratings in myreviews page he/she has given.

### Task 2: Rate a Car
- Description: Create car rating(see class diagram ) base controller, seeds, validations and validation tests to rate a  vendor's car .
- How to Evaluate: First, verify that all validation tests pass. Any user before logging in can see the rating of vendors. A renter, after renting a car renter can rate the car. There is testomny section in  the middle part of the homepage  (see UI Sketch: Homepage(Logged In)) where renter can rate the car's status after renting  so that other users  can see this rating and can get an idea of the car.
- Outcome of Task: The car rating model is associated with car and user and contracts so when the contract is approved by the vendor then the renter can rent a car. After renting a car the renter can give his/her feedback about the car where other users will be able to see any car ratings given by all renters and only the renter who has given feedbacks he/she can see all of his/her ratings in myreviews page he/she has given  .

### Task 3: Update HomePage
- Description: Update 'About us' section (see UI Sketch : Homepage) of homepage.
- How to Evaluate: In the homepage there is a section' About Us' (see UI Sketch : Homepage) that will give the information of the web developers and customer of the project.
- Outcome of Task: I added styling to this page, created the about page , linked it to Home Page and this about page shows all the information about the web developer and customer of this project.


## Tasks: Sheldon Ebron
### Task 1: Update Send Private Message between Vendor and Renter
- Description: In this update,  I will take the three controllers from the last iteration of this task and turn it into a single view where that is more user-friendly and does not require the user to know the conversation id number.  
- How to Evaluate: As a user, when on the vehicle detail page (see UI Sketch for Vehicle_details) there is a negotiation button that will take the user to the private messaging tab on the account page (see UI Sketch for  Private_Messaging). This page will display all of the user's conversations, and when selecting a conversation, the user will be able to view and message the other user in the conversation.In addition, there will be redundancies so that user will not need to input the conversation id. 
- Outcome of Task:  I added updates to the UI for the messaging, conversation, and communication interfaces. However, when trying to make the messaging send and recieve messages on the same screen problems came up. It became impossible to update the messaging functionality this way due to the model configuration that was used. 

### Task 2: Rental History
- Description: Create a Rental History for each vehicle that creates a controller, seeds, validations, and validation tests to display a vender's car using the Review by Renter model(see class diagram) 
- How to Evaluate: As a user, when on the vehicle detail page (see UI Sketch for Vehicle_details) there will be a button that allows for a renter to view the reviews that were left for a vehicle by the previous renters. 
- Outcome of Task: I added a table that will display all the ratings that each user this is done by visiting the the "../profiles/:id/history". The rating is also displayed using a gam called raty.

### Task 3: Rate a Renter
- Description: Create a Rate a Renter model, controller, seeds, validations and validation tests to rate a vendor Review by Vender (see class diagram)  .
- How to Evaluate: As a vender, after a car is returned based on the contract the vender will be able to rate the renter.
- Outcome of Task: This functionalty was started but not completed. As of this iteration the user can only seed the information. 

## Tasks: Laqin Fan
### Task 1: Show car availability using calendar
- Description: Add car availability status by checking the calendar. 
- How to Evaluate: Navigate to the "Browse Vehicle" page. There would be car status using a calendar tracking the avaliability staus.
- Outcome of Task: xxx

### Task 2: Notify by email
- Description: Add a notification function to send contract generating info to both renter and car owner. 
- How to Evaluate: Navigate to the contract page. Click generate congtract, our website will notify both renter and car owner by email.
- Outcome of Task: xxx

### Task 3: Create a testimonial
- Description:  Create a testimonial model, controller, _form.html.erb (+new/edit), show.html.erb, seeds, validations, validation tests. 
- How to Evaluate: As a renter/car owner, navigate to the home page to leave a testimonial/comment on the homepage about  experiences with the Rent-A-Car service. This comment would be updated on the home page.
- Outcome of Task: xxx



