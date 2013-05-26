# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(:title => 'Standard Mountain Bike', :description => 'Ideal for people beginning to mountain bike',
               :price => '650.99', :category => 'mtb', :image_url => 'std_mtb.jpg' )

Product.create(:title => 'XC Mountain Bike', :description => 'Cross country racing bike for competitive cyclists',
               :price => '2999.99', :category => 'mtb', :image_url => 'xtc.jpg' )

Product.create(:title => 'Down Hill Mountain Bike', :description => 'Down Hill MTB full suspension',
               :price => '2500.99', :category => 'mtb', :image_url => 'downhill.jpg' )

Product.create(:title => 'Standard Road Bike', :description => 'Ideal for people beginning to road cycle or exercise',
               :price => '1000.99', :category => 'road bike', :image_url => 'std_road.jpg' )

Product.create(:title => 'Racing Bike', :description => 'Road racing bike suitable for competitive cyclists',
               :price => '2000.99', :category => 'road bike', :image_url => 'road_racing.jpg' )

Product.create(:title => 'Triathlete', :description => 'Triathletes racing bike with disc wheels and time trial bars',
               :price => '3500.99', :category => 'road bike', :image_url => 'triathlete.jpg' )

Product.create(:title => 'Hybrid', :description => 'Half road half travel designed for quick travel commuting',
               :price => '850.00', :category => 'leisure bike', :image_url => 'hybrid.gif' )

Product.create(:title => 'Women\'s Hybrid', :description => 'Ideal for comfortable cycling over short distances ',
               :price => '2000.99', :category => 'leisure bike', :image_url => 'womens_hybrid.jpg' )

Product.create(:title => 'Touring Bike', :description => 'Long distance traveling bike',
               :price => '1599.00', :category => 'leisure bike', :image_url => 'touring.jpg' )

Product.create(:title => 'Helmet', :description => 'Small, light quick laptop, robust chassis',
               :price => '1000.99', :category => 'accessories', :image_url => 'helmet.jpg' )

Product.create(:title => 'Clothes', :description => 'Cycling top, shorts, socks, gloves',
               :price => '150.00', :category => 'accessories', :image_url => 'clothes.jpg' )

Product.create(:title => 'Shoes', :description => 'shoes are designed to work with clipless pedals and will
take a cleat to lock you on to the bike', :price => '1000.99', :category => 'accessories', :image_url => 'shoes.jpg' )

