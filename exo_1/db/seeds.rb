# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# Examples:

#5.times do |index|
#	category = Category.create!(name: "Name#{index}")
#end
#10.times do |index|
#	user = User.create!(first_name: "first_name#{index}", last_name: "last_name#{index}",email: "email#{index}@example.com")
#	articles = Article.create!(title: "title#{index}", content: "content#{index}",user_id: user.id,category_id: category.id)
#end	
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
#5.times do
 # category = Category.create!(name: Faker::Simpsons.character)
#end
#10.times do
 #user = User.create!(first_name: Faker::LordOfTheRings.character, last_name: Faker::Beer.name, email: Faker::Internet.email)
#got fake name and emai
  articles = Article.create!(title: Faker::Movie.quote, content: Faker::Hipster.sentences, user_id: Faker::Number.between(User.first.id,User.last.id), category_id: Faker::Number.between(User.first.id,User.last.id))
#end

15.times do
  comment = Comment.create!(comment: Faker::ChuckNorris.fact, user_id: Faker::Number.between(User.first.id,User.last.id), article_id: Faker::Number.between(User.first.id,User.last.id))
  likes = Likes.create!(user_id: Faker::Number.between(User.first.id,User.last.id), article_id: Faker::Number.Faker::Number.between(User.first.id,User.last.id))
end
