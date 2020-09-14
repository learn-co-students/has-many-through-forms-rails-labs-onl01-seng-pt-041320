# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@category = Category.create(name: "Must-See")
@post = Post.create(title: "Grey's Anatomy", content: "Six season and a movie, at least!")
@user = User.create(username: '3rdEyeBlind')