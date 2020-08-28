# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

doak = User.create(username: 'doak', email: 'doak@email.com', password: '123')
heidi = User.create(username: 'heidi', email: 'heidi@email.com', password: '123')

post_1 = Post.create(date: "8/27/2020", location:"Bellingham, WA", image:"test.com", user_id: 1)

comment_1 = Comment.create(body: "Thats a big send!", user_id: 2, post_id: 1)