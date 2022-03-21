# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Part.destroy_all
Favorite.destroy_all
Property.destroy_all
User.destroy_all

olivier = User.new
olivier.email = "o.raimbault@gmail.com"
olivier.password = "123456"
olivier.first_name = "Olivier"
olivier.last_name = "Raimbault"
file = URI.open('https://pbs.twimg.com/profile_images/646950255779532801/ZqNC_B0P_400x400.jpg')
olivier.photo.attach(io: file, filename: 'olivier profile', content_type: 'image/jpg')
olivier.save!
