# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
Instructor.destroy_all
User.destroy_all

connor = User.create(username: "Connor")
jason = User.create(username: "Jason")

eric = Instructor.create(name: "Eric", years_teaching: 10, bio: "It's DJ Slamma Jamma in the house!!!", school: "Flatiron School", likes: 158, image: './imgs/eric.png')
michelle = Instructor.create(name: "Michelle", years_teaching: 4, bio: "Part-Time Podcast Host. Part-Time Actress. Full-Time Developer.", school: "Flatiron School", likes: 249, image: './imgs/michelle.jpeg')
ian = Instructor.create(name: "Ian", years_teaching: 5, bio: "Probably gonna teach you all about Javascript and React.. ya know the easy stuff", school: "Flatiron School", likes: 558, image: './imgs/ian.png')
ethan = Instructor.create(name: "Ethan", years_teaching: 2, bio: "Changing the world, one line of code at a time", school: "Flatiron School", likes: 358, image: './imgs/ethan.jpeg')
caryn = Instructor.create(name: "Caryn", years_teaching: 10, bio: "I don't even work here anymore", school: "Flatiron School", likes: 772, image: './imgs/Caryn.jpeg')
greg = Instructor.create(name: "Greg", years_teaching: 4, bio: "I'm honestly just here to have a good time", school: "Flatiron School", likes: 309, image: './imgs/greg.jpeg')
jallen = Instructor.create(name: "Jallen", years_teaching: 8, bio: "I'm like... really tall", school: "Flatiron School", likes: 250, image: './imgs/Jallen.jpeg')
steven = Instructor.create(name: "Steven", years_teaching: 3, bio: "I'm probably knitting a sweater, and I also don't work here anymore", school: "Flatiron School", likes: 309, image: './imgs/steven.jpeg')

eric_comment1 = Comment.create(content: "Eric is a great teacher!", agree: 23, user: connor, instructor: eric)
eric_comment2 = Comment.create(content: "Drops the sickest beats, DJ Slamma Jamma 4 life", agree: 45, user: jason, instructor: eric)

michelle_comment1 = Comment.create(content: "Michelle has such a soothing voice, it's easy to learn when you're so relaxed", agree: 50, user: connor, instructor: michelle)
michelle_comment2 = Comment.create(content: "Gives the most breaks!!!", agree: 30, user: connor, instructor: michelle)

ian_comment1 = Comment.create(content: "Ian is so articulate, great instructor 10/10", agree: 50, user: jason, instructor: ian)

ethan_comment1 = Comment.create(content: "Ethan is always there to help right when you need it!", agree: 58, user: connor, instructor: ethan)

caryn_comment1 = Comment.create(content: "She doesn't even go here", agree: 5000, user: jason, instructor: caryn)
