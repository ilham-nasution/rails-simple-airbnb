require 'faker'

puts "Creating flats...."

5.times do
  Flat.create!(
    name: "Apt. #{Faker::Address.street_name}",
    address: Faker::Address.street_address,
    description: Faker::Restaurant.description,
    price_per_night: (50..150).to_a.sample,
    number_of_guests: (1..3).to_a.sample
  )
end

puts "...finished"
