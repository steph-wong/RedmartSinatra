require './models/user'
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
    name: faker::Name.name,
    email: faker::Internet.email,
    address: faker::Address.street_address,
    password: faker::Internet.password,
    cc_number: faker::Business.credit_card_number
  )
end
