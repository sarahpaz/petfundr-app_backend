# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
sarah = User.create(username: 'sarah', password: 'test')
jane = User.create(username: 'jane', password: 'test')
dee = User.create(username: 'dee', password: 'test')

#pets
sarah.pets.create(name: 'Kahlua', age: 15, image: 'https://robohash.org/1?set=set4&size=200x200', cause: 'Lymphoma', goal: 1500)

jane.pets.create(name: 'Dolores', age: 6, image: 'https://robohash.org/2?set=set4&size=200x200', cause: 'Stage 1 kidney disease', goal: 500)

dee.pets.create([{name: 'Bones', age: 5, image: 'https://robohash.org/3?set=set4&size=200x200', cause: 'Heart disease', goal: 300}, {name: 'Ginger', age: 11, image: 'https://robohash.org/4?set=set4&size=200x200', cause: 'Liver disease', goal: 700}])

sarah.pets.create(name: 'Thumper', age: 2, image: 'https://robohash.org/5?set=set4&size=200x200', cause: 'Diabetes', goal: 250)
jane.pets.create(name: 'Tango', age: 4, image: 'https://robohash.org/6?set=set4&size=200x200', cause: 'Stage 3 kidney disease', goal: 250)

#donations
Donation.create(amount: 100, message: 'Best wishes!', user_id: 1, pet_id: 2)
Donation.create(amount: 200, message: 'Sending so much love!', user_id: 2, pet_id: 1)
Donation.create(amount: 200, message: 'Stay positive, we love you!', user_id: 3, pet_id: 1)
Donation.create(amount: 200, message: 'I hope this helps, get well soon!', user_id: 1, pet_id: 5)