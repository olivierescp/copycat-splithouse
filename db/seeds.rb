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
olivier.photo.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
olivier.save!

maison1 = Property.new
maison1.title = "Magnifique maison d'architecte"
maison1.part_price = 300000
maison1.size = 165
maison1.address = "2 place de l'Hôtel de Ville, Saint-Tropez"
# file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/pwfVtGaaQfmnq3P5skAR_DSC_1704.jpg')
# maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
# file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/yKZoLHdlTzCZvYwbefzT_DSC07931.jpg')
# maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
# file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/9e4ZnVEVQgmgUHDSutuf_DSC_1772.jpg')
# maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
# file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/ywxeGRgBQ6GqkG5lzn5J_DSC_1735.jpg')
# maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
# file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/tOoCiloQQNCeEFMQepuB_DSC_1671.jpg')
# maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
# file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/2YrCSuncTVWL9NCV1UyS_DSC_1904.jpg')
# maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
# file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/Rk6tG5KSFurRqJsfGotw_DSC_2004.jpg')
# maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
# file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/m4MFo4XThiIVVp13yaug_DSC_1692.jpg')
# maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
maison1.save!
