# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Profile.destroy_all

User.create(email:'test34@test.com', password:'123456')

10.times do
    name = Faker::Name.name
    gender = Faker::Gender.type
    bio = Faker::Quote.matz
    dob = Faker::Date.birthday(min_age: 18, max_age: 65)
    avatar = Faker::Avatar.image(slug: "my-own-slug")
    Profile.create(name: name, gender: gender, bio: bio, dob: dob, avatar: avatar)
end
puts "#{Profile.all.size}profiles seeded"