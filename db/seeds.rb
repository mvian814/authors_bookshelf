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

# t.string "title"
# t.string "isbn"
# t.text "summary"
# t.integer "author_id"



def create_books(a)
  5.times do |i|
  a.books.create!(
  title: Faker::Book.title,
  isbn: Faker::Code.isbn,
  summary: Faker::Lorem.sentence(1),
)
  end
end

Author.destroy_all
Book.destroy_all


5.times do |author|
a =  Author.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  bio: Faker::Lorem.paragraph(4),
  genre: Faker::Book.genre,
  publisher: Faker::Book.publisher,
)

    a.avatar = Rails.root.join("app/assets/images/stock-profile-#{author + 1}.jpeg")
    puts Rails.root.join("app/assets/images/stock-profile-#{author + 1}.jpeg")
    # .open

    create_books(a)
end
