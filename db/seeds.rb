require 'faker'
Movie.delete_all


50.times do
	movie = Movie.create(title: Faker::Hipster.word, release_year: Faker::Number.number(4), director: Faker::Name.name)
end 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
