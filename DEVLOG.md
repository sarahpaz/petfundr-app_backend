# PetFundr: Dev Log
##  React App with Rails API backend
---
Goals:
Functionality (User stories):
- Sign-up and Login
- View pets (Index page of all pets/causes)
- Add pets (Add a pet listing)
- Make a donation to a pet/cause
- Favorite/Watch a pet/cause --*Stretch goal

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
- [X] Add bcrypt gem

### November 6, 2019
- [ ] Login functionality / form 
- [ ] Logout functionality 
- [ ] Sign-up form / form
- [ ] Set up routes (react-router) *3 minimum for requirements
