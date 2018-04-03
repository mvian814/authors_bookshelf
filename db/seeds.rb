# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# author
# t.string "first_name"
# t.string "last_name"
# t.text "bio"
# t.string "genre"
# t.string "publisher"



  5.times do |author|
    a =  Author.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      bio: Faker::Lorem.paragraph(4),
      genre: Faker::Book.genre,
      publisher: Faker::Book.publisher,
    )



    end
