# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do
  User.create!(
    email: Faker::Internet.unique.email,
    password: Faker::Internet.unique.password
  )
end
users = User.all

# Create Items
10.times do
  Item.create!(
    user: users.sample,
    name: Faker::String.random(3..12)
  )
end
items = Item.all

user = User.first
user.update_attributes!(
  email: 'olienad@yahoo.com',
  password: 'helloworld'
)

puts "Data generation complete."
puts "#{User.count} users created."
puts "#{Item.count} items created."
