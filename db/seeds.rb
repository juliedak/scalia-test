# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Price.destroy_all
Product.destroy_all
User.destroy_all

nikepriceeuro = Price.create(currency: "Eur", value: 40)
puts "nikepriceeuro created"
nikepricedollar = Price.create(currency: "Dollars", value: 49)
puts "nikepricedollar created"
nike = Product.create(name: "Nike Air Force", size: 37, prices: [nikepriceeuro, nikepricedollar])
puts "nike created"

addidaspriceeuro = Price.create(currency: "Eur", value: 30)
puts "addidaspriceeuro created"
addidaspricedollar = Price.create(currency: "Dollars", value: 37)
puts "addidaspricedollar created"
addidas = Product.create(name: "Adidas Stan Smith", size: 42, prices: [addidaspriceeuro, addidaspricedollar])
puts "addidas created"

john = User.create(username: "John", products: [nike, addidas])
puts "user created"
