# PetFundr: Dev Log
##  React App with Rails API backend
---
### November 4, 2019

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
- **belongs_to :user** 
- **has_many :donations**

Donation:
- amount
- message
- **belongs_to :pet**
- **belongs_to :user**

Backend:
- [x] Establish models & associations
- [x] Create all model resources (rails g resource)
- [ ] Create seed data
- [ ] Test associations with seed data
- [ ] Build out Rails APIs
- [x] Add serialize (Active Model Serializer)
- [x] Add rack-cors gem
- [X] Add bcrypt gem

Frontend:
- [ ] Login form (class component)
- [ ] Sign-up form (class component)