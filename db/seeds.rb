# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all
flat_names = [ "Bed setting room in Galery Lafayette Street",
               "Studio tout confort proche Gare du nord",
               "Human home",
               "Luxueux nid d'amour au coeur de Paris",
               "Luxury Studio Bastille BAIL MOBILITÉ POSSIBLE" ]
5.times do |i|
  Flat.create(
    name: flat_names[i],
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true),
    price_per_night: rand(40..200).to_i,
    number_of_guests: [1, 2, 3, 4, 5].sample
  )
end

puts "Finished!"
