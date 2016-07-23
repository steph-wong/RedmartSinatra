require './models/user'
require './models/product'

require 'faker'

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
    address: Faker::Address.street_address,
    password: Faker::Internet.password,
    cc_number: Faker::Business.credit_card_number
  )
end

(0..10).each do |i|
  Product.create(
    name: Faker::Commerce.product_name,
    brand_id: Faker::Number.digit,
    categories_id: Faker::Number.digit,
    price: Faker::Commerce.price
  )
end
