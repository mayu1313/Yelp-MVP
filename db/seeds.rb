# This file should contain all the record createtion needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting data"
Restaurant.destroy_all
puts "Data deleted"



puts "Creating new data"

5.times do
Restaurant.create(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  category: Restaurant::CATEGORY.sample,
  phone_number: Faker::PhoneNumber.phone_number
)
end
puts "Data created"
