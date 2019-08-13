# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do 
	user = User.create!(
		first_name: Faker::Name.first_name ,
		last_name: Faker::Name.last_name ,
		email: Faker::Internet.email , 
		description: Faker::Lorem.sentence(word_count: 5),
		age: Faker::Number.within(range: 20..60))
	end
u = User.all

20.times do 
		gossip = Gossip.create!(
			title: Faker::Company.buzzword ,
			content: Faker::Lorem.paragraph(sentence_count: 5),user: u[rand(0..9)])
		#puts "le titre est: #{gossip.title} dont le contenu consiste:#{gossip.content}"
	end
