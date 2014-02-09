# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Jeff', question: 'What is your favorite cat?', answer: '(octocat|nyan ?cat)')
User.create(name: 'Neil', question: 'When Hurricane Sandy flooded the streets, what shoes were you wearing?', answer: '(none|0)')
User.create(name: 'Sean', question: 'What is the coolest borough you\'ve ever lived in?', answer: 'Brooklyn')
User.create(name: 'Pete', question: 'How many stops does the train make between home and work?', answer: '(none|0)')
User.create(name: 'Brian', question: 'What web bootcamp did you go to?', answer: '(General Assembly|GA)')