# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 require 'faker'
 
 # Create Posts
 10.times do
   Todo.create!(
     name:  Faker::Lorem.sentence,
     done: false
   )
 end

 puts "Seed finished"
 puts "#{Todo.count} Todos created"