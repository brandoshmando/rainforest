# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




Product.create( name: "Bulk Marbles", description: "These are some great marbles!", price_in_cents: 1050)
Product.create( name: "Recycled Batteries", description: "No charge", price_in_cents: 10)
Product.create( name: "Waterbed", description: "Doesn't leak anymore, promise!!", price_in_cents: 2000)