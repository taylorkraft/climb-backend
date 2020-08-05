# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Mountain.delete_all

User.create(name: "Taylor")
User.create(name: "Kayla")
User.create(name:"Kaitlin")
User.create(name: "Chris")
User.create(name: "Joe")

Mountain.create(name: "Mt. Elbert", elevation: "14,433", user_id: 8)
Mountain.create(name: "Mt. Massive", elevation: "14,421", user_id: 8)
Mountain.create(name: "Mt.Harvard", elevation: "14,420", user_id: 7)
Mountain.create(name: "Blanca Peak", elevation: "14,345", user_id: 10)
Mountain.create(name: "La Plata Peak", elevation: "14,336", user_id: 6)