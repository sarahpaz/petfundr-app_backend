# PetFundr: Dev Log

## React App with Rails API backend

---

Goals:
Functionality (User stories):

- Sign-up and Login
- View pets (Index page of all pets/causes)
- Add pets (Add a pet listing)
- Make a donation to a pet/cause
- Favorite/Watch a pet/cause --\*Stretch goal

Models:
User:

- username
- password_digest (bcrypt)
- **has_many :pets** (e.g. pet the user owns)
- **has_many :donations** (e.g. donations the user has made for another pet)

Pet:

- name
- age
- image (save as url)
- cause
- goal
- user_id
- **belongs_to :user**
- **has_many :donations**

Donation:

- amount
- message
- pet_id
- user_id
- **belongs_to :pet**
- **belongs_to :user**

### November 4, 2019

- [x] Establish models & associations
- [x] Create all model resources (rails g resource)
- [x] Create seed data
- [x] Test associations with seed data
- [x] Build out Rails APIs
- [x] Add serialize (Active Model Serializer)
- [x] Add rack-cors gem
- [x] Add bcrypt gem

### November 6/7, 2019

- [x] Login functionality / form
- [x] Logout functionality
- [x] Add react-bootstrap
- [x] Implement some basic styling

### November 8, 2019

- [x] Navbar styling and functionality
- [x] Change serializer to FAST JSON API
- [x] Set up serializer for each model
- [x] Plan out UI

### Nov 10, 2019

- [x] Set up PetList and render PetCard
- [x] Set up routes (react-router) \*3 minimum for requirements

### Nov 11, 2019

- [x] Sign-up functionality / form
- [x] HomePage component / Logic to render HomePage if not logged in OR render PetList

### Nov 12, 2019

- [x] Pet show page
- [x] Complete README

### Nov 13, 2019

- [x] Replace pet images with realitic images
- [x] Fix routes (Logout)

### Nov 14, 2019

- [x] Remove users from store after logout
- [x] Pet show page
- [x] Donation form styling
- [x] Video walkthrough

### Nov 23, 2019

- [x] Donation functionality / Form

### Nov 25, 2019

- [x] Clear donation form after donation is complete

### Nov 27, 2019

- [x] Change PetCard to class component
- [x] Change PetPage to class component
- [x] Change NewDonation to class component
  - [x] Progress bar update
- [x] Thank you message
- [x] Final styling

### Stretch Goals

- [ ] Add a pet functionality
- [ ] User show page
- [ ] About page
- [ ] Set up progress bar
- [ ] Change thank you alert to toast message
