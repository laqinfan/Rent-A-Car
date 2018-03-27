# Individual Assignment Specifications

- Team: Rent A Car
- Iteration: 1

## Special Roles

- Project Coordinator: Katie Bridson
- Quality Assurance Czar: Sheldon Ebron
- Video Demo Creators:
  - xxx, 999
  - xxx, 999
- Demo-Booth Operator: xxx

## Tasks: Katie Bridson

### Task 1: Create Address model
- Description: Create Address model (see class diagram), validations, validation tests which will be used by the PickupLocation and Profile models.
- How to Evaluate: The validation tests should pass.
- Outcome of Task: xxx

### Task 2: Add a Car
- Description: Create Car model, PickupLocation model (see class diagram), the Car controller, seeds, validations and validation tests. Also, create and style the New/Edit Car pages and Car Details page.
- How to Evaluate: First, verify that all validation tests pass. Then, as a logged in user, click the Account button in the navigation pane on the left side of the screen (see UI Sketch: Homepage(Logged In)). You should be redirected to the Account page. From the Account page, click the Vehicles tab (see UI Sketch: Account page). You should be redirected to the Vehicles page. From the Vehicles page, click the "Add Vehicle" button. You should be redirected to the "New Vehicle" form (see UI Sketch: NewVehicle). Enter vehicle information in the form and click "Submit". You will be returned to the form if any validation errors were found and those errors should be shown. If there were no errors, you will be redirected to the Vehicles page and a new vehicle should appear in your list. You can then click on the "Details" button next to that car which should take you to the Car Details page (see UI Sketch: CarDetails). Return to the Vehicles page and click the "Edit" button next to the car. You should be taken to the "Edit Vehicle" page (see UI Sketch: EditVehicle). Change an attribute of the car and click "Submit". You should be redirected to the Vehicles page and the details updated. Click the "Details" button again to confirm the changes were made.
- Outcome of Task: xxx

### Task 3: Upload an Image
- Description: Add Carrierwave gem to project and add image upload functionality to New/Edit Car pages and New/Edit Profile page. 
- How to Evaluate: Navigate to the "New Vehicle" page (see instructions in Task: Add a Car). There should be a field to add an image. Fill in the vehicle information, upload an image from your computer, and click "Submit". Navigate to the "Details" page for the car you just created (see instructions in Task: Add a Car) and confirm the image you uploaded is displayed.
- Outcome of Task: xxx

### Task 4: Search a Car
- Description: Create the Browse Vehicles page (see UI Sketch BrowseVehicles). Add keyword search functionality to the Car controller.
- How to Evaluate: As a logged in user, click the Browse Vehicles button in the navigation pane on the left side of the screen (see UI Sketch: Homepage(Logged In)). You should see the Browse Vehicles page (see UI Sketch: BrowseVehicles) with a search bar. Entering a term in the search box and clicking the Search button should trigger a keyword search, refresh the page, and return relevant results.
- Outcome of Task: xxx

### Task 5: Filter Car Results
- Description: Add filter functionality to the Car controller and the Browse Vehicles page (see UI Sketch: BrowseVehicles).
- How to Evaluate: As a logged in user, click the Browse Vehicles button in the navigation pane on the left side of the screen (see UI Sketch: Homepage(Logged In)). You should see the Browse Vehicles page (see UI Sketch: BrowseVehicles) with a filter pane. Selecting various car attributes should trigger filtering of all cars or the current search results, refresh the page, and return only relevant results.
- Outcome of Task: xxx

## Tasks: Senjuti Dutta

### Task 1: Register as New User
- Description: Set up devise and style the registration page.
- How to Evaluate: In the register page (see UI Sketch for Register Page) click the register button that will bring up a new form with Nmae, username and password fields . After filling those fields if a user clicks submits button it will redirect to Login Page (see UISketch for LoginPage)
- Outcome of Task: xxx

### Task 2: Login
- Description: Set up devise and style the login page.
- How to Evaluate: In the login page (see UI Sketch for Login Page) click the login button that will bring up a new form with username and password fields . After filling those fields if a user clicks submits button it will redirect to Homepage(see UISketch for HomePage)
- Outcome of Task: xxx

### Task 3: Add Renter Profile Information
- Description: To add renter profile information I need the RenterProfile model (see class diagram), base controller, new/edit form (see UI Sketches for Profile page)
- How to Evaluate: In  the Profile Page (see UI Sketch #xx), click new button that will bring up new profile form where renters can put their information . click edit button that will bring an edit profile form where renters can edit their information.
- Outcome of Task: xxx (Description; filled in at end of iteration)

Task 4: Add Paypal Information
- Description: To add paypal information I need the paypal model (see class diagram) base controller, new/edit form (see UI sketches for Profile Page)
- How to Evaluate: see UI Sketch for Profile Page click the create new button that will bring up  new paypal form where the user can add their paypal information and if any user does not have any account then create new account link  will redirect to "https://www.paypal.com/in/webapps/mpp/account-selection"official paypal page to signup  . If a user clicks edit button it will redirect to edit paypal form and the user can edit your paypol information.
- Outcome of Task: xxx

## Tasks: Sheldon Ebron

### Task 1: Send Private Message between Vendor and Renter
- Description: Create a Conversation model and a message model. For each of these models; there will need to be an associated controller, _form.html.erb(+new/edit), show.html.erb, seeds, validations, validation tests. The way that the Conversation model and Message model will be created based on the Class Diagram, (see Class Diagram), implies that every connection between two users is a conversation and an element in the Conversation model. Each component of the Conversation model will be associated with all the messages between the two users in the Message model.
- How to Evaluate: As a user, when on the vehicle detail page (see UI Sketch for Vehicle_details) there is a negotiation button that will take the user to the private messaging tab on the account page (see UI Sketch for  Private_Messaging). This page will display all of the user’s conversations, and when selecting a conversation, the user will be able to view and message the other user in the conversation.
- Outcome of Task: xxx

## Tasks: Laqin Fan

### Task 1: Create a Rental Contract
- Description: Contract model, controller, _form.html.erb (+new/edit), show.html.erb, seeds, validations, validation tests
- How to Evaluate:In the rental period page(see UI Sketch for Rental period Page),click the button generate an contract, it will redirect to the vehicle detail page(see UI Sketch), and generate a new contract in contract page(see UI Sketch). 
- Outcome of Task: N/A

### Task 2: Approve/agree to Rental Contract
- Description: edit Contract controller, approve.html.erb
- How to Evaluate:After generating an contract, the contract would be put into the database. In the contract form (see UI Sketch for contract form), there are buttons: edit/negotiate/void/approve. clicking Edit button can edit the contract, clicking negociate button will show the chatting message, clicking void button means this contract is canceled, clicking approve button means approve and get a deal.
- Outcome of Task: N/A

### Task 3: Pay for Rental as a renter
- Description: Transaction model linked to a contract where the debit and credits to PayPal accounts are stored. Create a class to do the calculation in models.
- How to Evaluate: Navigate to the contract page, and choose one contract. After renter and vendor approve the contract, our RentACar would deduct the renting fee based on the final price. 
- Outcome of Task: N/A

### Task 4: Receive Payment for Rental as a vendor
- Description: Transaction model linked to a contract where the debit and credits to PayPal accounts are stored. Create a class to do the calculation in models.
- How to Evaluate:Navigate to the contract page, and choose one contract. After renter and vendor approve the contract, our RentACar would deduct the renting fee based on the final price and transfer it to vendor by paypal.
- Outcome of Task: N/A
