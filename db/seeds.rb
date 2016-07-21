require './models/user'
require 'Faker'

# (0..10).each do |i|
#   User.create(name: "User #{i}")
# end

# (0..10).each do |i|
#   User.create(
#     name: "user #{i}"
#     email: "user#{i}@gmail.com",
#     address: "123 Whatev Road"
#   )
# end

(0..10).each do |i|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address
  )
end

(0..10).each do |i|
  Product.create(name: "Product #{i}")
end
