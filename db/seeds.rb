# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'martbee88', email: 'martbee88@gmail.com', password: 'password', password_confirmation: 'password' )
User.create(username: 'jwo', email: 'jwo@gmail.com', password: 'password', password_confirmation: 'password' )


Pin.create!(title: 'Regular Old Pines', photo: "pine_1.jpg", link: 'https://en.wikipedia.org/?title=Pine', content: 'Just some pines.', user_id: 1)
Pin.create!(title: 'Lone Mountain Pine', photo: 'pine_2.jpg', link: 'http://treesandshrubs.about.com/od/selection/tp/PineTrees.htm', content: 'It\'s lonely at the top', user_id: 1)
Pin.create!(title: 'Virginia Pine', photo: 'pine_3.jpg', link: 'http://www.naturehills.com/trees/pine-trees', content: 'Otherwise known as Pinus Virginiana.', user_id: 1)
Pin.create!(title: 'Winter Pine', photo: 'pine_4.jpg', link: 'http://www.treehelp.com/types-of-pine/', content: 'Doing what pines do best.', user_id: 2)
Pin.create!(title: 'Christmas Pine', photo: 'pine_5.jpg', link: 'http://www.pinetum.org/Lovett/1whatare.htm', content: 'Ho Ho Ho!', user_id: 2)
Pin.create!(title: 'Pine Trail', photo: 'pine_6.jpg', link: 'http://oregonstate.edu/trees/conifer_genera/pine.html', content: 'Wonderful biking and hiking.', user_id: 2)
