# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create(name: "Sauver Willy", goal: 1200, description: "Défendez la cause animale", user_id: 1)
Project.create(name: "Sauver Bribri", goal: 5000, description: "Défendez les bruns", user_id: 1)
Project.create(name: "Sauver Ali", goal: 1200, description: "Défendez la Normandie", user_id: 1)
Project.create(name: "Sauver Felix", goal: 5000, description: "Défendez les chats", user_id: 1)
