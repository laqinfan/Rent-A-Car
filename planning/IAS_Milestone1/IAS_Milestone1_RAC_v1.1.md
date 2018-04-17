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
- How to Evaluate: First as a user who does not have any account for  "Rent a car" website click the Register button that will be redirected to "Register" form (see UI Sketch : Register). Enter your Register information in the form and click "Submit" . You will be redirected to the Login Page (see UI sketch : Login Page) .
- Outcome of Task: xxx

### Task 2: Login
- Description: Set up devise and style the login page.
- How to Evaluate: First as a user who already have an account for  "Rent a car" website click the Login button that will be redirected to "Login" form (see UI Sketch : LoginForm). Enter your Login information in the form and click "Submit" . You will be returned to the Homepage (see UI sketch : HomePage) .
- Outcome of Task: xxx

### Task 3: Add Renter Profile Information
- Description: Create RenterProfile model (see class diagram), base controller, seeds, validations and validation tests. Also, create and style new/edit Profile page.
- How to Evaluate: First, verify that all validation tests pass. Then, as a logged in renter, click the Profile button in the Account Page (see UI sketch : Account Page). You should be redirected to Profile page (see UI Sketch for Profile Page).From the Profile Page , click the Create New Button . You should be redirected to the " New Profile" form (see UI sketch : NewProfile). Enter Profile information in the form and click "Submit". You will be returned to the form if any validation errors were found and those errors should be shown. If there were no errors, you will be redirected to the Profile page and your profile should appear . If you already have your profileand want to add your profile information,you should be taken to the "Edit Profile" form (see UI Sketch: EditProfile). Change an attribute of the profile and click "Submit". You should be redirected to the Profile page and the profile updated. 
-Outcome of Task: xxx 

###Task 4: Add Paypal Information
- Description: Create paypal model (see class diagram) base controller,  seeds, validations and validation tests. Also, create and style the New/Edit Profile Page .
- How to Evaluate: First, verify that all validation tests pass. Then, as a logged in user, click the Create New button for adding Paypal information in the Profile Page (see UI sketch : Profile Page).  You should be redirected to the " NewPaypal" form (see UI sketch : NewPaypal). Enter Paypal information in the form and click "Submit". You will be returned to the form if any validation errors were found and those errors should be shown. If there were no errors, you will be redirected to the Profile page . If you does not have any Paypal acount , you should be redirected to " http://www.paypal.com" to create a Paypal account. If You want to edit your Paypal information, you should be taken to the "Edit Paypal " form (see UI Sketch: EditPaypal). Change an attribute of the paypal account  and click "Submit". You should be redirected to the Profile page . 
-Outcome of Task: xxx

## Tasks: Sheldon Ebron

### Task 1: Send Private Message between Vendor and Renter
- Description: This task will add a Conversation model and a Message model with controllers
- How to Evaluate: A user will be able to click on a tab in their profile window that will let them search other users and start new private messages or access old private messages between the users.
- Outcome of Task: xxx

## Tasks: Laqin Fan

### Task 1: Create a Rental Contract
- Description: Contract model, controller, _form.html.erb (+new/edit), show.html.erb, seeds, validations, validation tests
- How to Evaluate:In the rental period page(see UI Sketch for Register Page),click the button generate an contract, it will redirect to the vehicle detail page, and generate a new contract in contract page. 
- Outcome of Task: xxx

### Task 2: Approve/agree to Rental Contract
- Description: edit Contract controller, approve.html.erb
- How to Evaluate:In the contract form, there are buttons: edit/negotiate/void/approve. clicking Edit button can edit the contract, clicking negociate button will show the chatting message, clicking void button means this contract is canceled, clicking approve button means approve and get a deal.
- Outcome of Task: xxx

### Task 3: Pay for Rental as a renter
- Description: Dependent on adding the paypal information
- How to Evaluate: After renter and vendor approve the contract, our RentACar would deduct the renting fee based on the final price. 
- Outcome of Task: xxx

### Task 4: Receive Payment for Rental as a vendor
- Description: Dependent on adding the paypal information
- How to Evaluate:After renter and vendor approve the contract, our RentACar would deduct the renting fee based on the final price and transfer it to vendor by paypal.
- Outcome of Task: xxx





