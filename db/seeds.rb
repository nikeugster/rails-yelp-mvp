# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurants = [
  { name: "Fong Li", address: "23 Abbey Road, China Town", phone_number: "020 7420 5856", category: "chinese"},
  { name: "Luigis Pizza", address: "Kleiststrasse 8, Berlin", phone_number: "030 2165925", category: "italian"},
  { name: "La Fratelli", address: "Langstrasse 3, Zürich", phone_number: "044 257 25 36", category: "italian"},
  { name: "Mon Paris", address: "235 Rue Jean-Pierre, Paris", phone_number: "01 40 64 77 64", category: "french"},
  { name: "Sushi King", address: "Albertweg 3, Berlin", phone_number: "030 4256842", category: "japanese"}
]

restaurants.each do |restaurant|
  Restaurant.create(name: restaurant[:name], address: restaurant[:address], phone_number: restaurant[:phone_number], category: restaurant[:category])
end
