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

eric = Instructor.create(name: "Eric", years_teaching: 10, bio: Faker::Lorem.sentence, school: "Flatiron", likes: 158, image: './imgs/eric.png')
michelle = Instructor.create(name: "Michelle", years_teaching: 4, bio: Faker::Lorem.sentence, school: "Flatiron", likes: 249, image: './imgs/michelle.jpeg')
ian = Instructor.create(name: "Ian", years_teaching: 5, bio: Faker::Lorem.sentence, school: "Flatiron", likes: 558, image: './imgs/ian.png')
ethan = Instructor.create(name: "Ethan", years_teaching: 2, bio: Faker::Lorem.sentence, school: "Flatiron", likes: 358, image: './imgs/ethan.jpeg')

3.times do 
    Comment.create(content: Faker::Lorem.sentence, agree: 5, user: User.all.sample, instructor: Instructor.all.sample)
end

