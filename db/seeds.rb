# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: %w[chinese italian japanese french belgian][rand(5)],
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
  puts restaurant.valid? ? "#{restaurant.name} created!" : "#{restaurant.name} bot created: invalid..."
end

30.times do
  review = Review.create(
    content: %w[Excelent Terrible Delicious Marvelous Godlike][rand(4)],
    rating: (0..5).to_a[rand(6)],
    restaurant_id: (1..9).to_a[rand(10)]
  )
  puts "Review #{review.id} created!"
end
