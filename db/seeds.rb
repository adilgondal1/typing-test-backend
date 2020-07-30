# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Score.destroy_all


User.create(username: 'Adil')
User.create(username: 'Billy')

Score.create(value: 68, user: User.first)
Score.create(value: 100, user: User.last)
Score.create(value: 13, user: User.last)
Score.create(value: 51, user: User.last)
Score.create(value: 27, user: User.first)

