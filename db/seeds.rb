# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Restaurant.create!(name: "Bistro Mikami", address: "Nakameguro", phone_number: "-", category: "french")
# Restaurant.create!(name: "Restaurant Unique", address: "Meguro", phone_number: "-", category: "belgian")
# Restaurant.create!(name: "Locale", address: "Nakano", phone_number: "-", category: "italian")
# Restaurant.create!(name: "Mugi no Oto", address: "Shibuya", phone_number: "-", category: "japanese")
# Restaurant.create!(name: "Downtown B’s Indian Kitchen", address: "Shinjuku", phone_number: "-", category: "chinese")


5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: Restaurant::TYPE.sample
  )
end
