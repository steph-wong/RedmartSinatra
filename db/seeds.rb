require './models/user'
require './models/product'
require './models/brand'
require './models/category'
require './models/review'

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
  Brand.create(
    name: Faker::Commerce.product_name
  )
end

(0..10).each do |i|
  Category.create(
    name: Faker::Commerce.department
  )
end

brand_ids = Brand.pluck(:id)
category_ids = Category.pluck(:id)

(0..10).each do |i|
  Product.create(
    name: Faker::Commerce.product_name,
    brand_id: brand_ids.sample,
    categories_id: categories_ids.sample,
    price: Faker::Commerce.price
  )
end

(0..10).each do |i|
  Review.create(
    content: Faker::Hipster.sentence,
    user_id: rand(1..11),
    product_id: rand(1..11)
  )
end
