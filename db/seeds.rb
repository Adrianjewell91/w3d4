# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

  User.destroy_all
  paolo = User.create!(username: "Paolo")
  adrian = User.create!(username: "Adrian")

  Poll.destroy_all
  p1 = Poll.create!(author_id: paolo.id, title: "Preferred Martial Arts")
  p2 = Poll.create!(author_id: adrian.id, title: "Hydroponics or Regular")

  Question.destroy_all
  q1 = Question.create!(poll_id: p1.id, body: 'What do your prefer?')
  q2 = Question.create!(poll_id: p2.id, body: 'What do you like to eat?')

  AnswerChoice.destroy_all
  a1 = AnswerChoice.create!(question_id: q2.id, choice:"bananas")
  a2 = AnswerChoice.create!(question_id: q2.id, choice:"apples")
  a3 = AnswerChoice.create!(question_id: q1.id, choice:"kung fu")
  a4 = AnswerChoice.create!(question_id: q1.id, choice:"karate")

  Response.destroy_all
  r1 = Response.create!(user_id: adrian.id, response_id: a3.id)
  r2 = Response.create!(user_id: paolo.id, response_id: a1.id)

end
