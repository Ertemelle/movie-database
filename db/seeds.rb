require 'faker'
Movie.delete_all
Director.delete_all

10.times do
	director = Director.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

50.times do
	movie = Movie.create(title: Faker::Hipster.word, release_year: Faker::Number.number(4), director_id: rand((Director.first.id)..(Director.last.id)))
end