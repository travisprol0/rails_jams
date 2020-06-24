# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '...deleting any exsiting Artists'
Artist.destroy_all

puts '...Creating new Artists'
10.times do
  Artist.create(name: Faker::FunnyName.name , age: rand(1..100), bio: Faker::Hipster.sentence)
end

puts "File has been seeded! 🍀"