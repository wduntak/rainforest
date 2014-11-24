# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Product.destroy_all

User.create!({
  email: "example@gmail.com",
  name: "Ex User",
  password: "password",
  password_confirmation: "password"
  }
)

100.times do |i|

Product.create({
  name: "Product#{i}",
  description: "Description#{i}",
  price_in_cents: i,
  url: "Url#{i}"
  }
)
end