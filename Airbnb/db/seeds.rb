# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

10.times do
  puts "t"
  City.create(name: Faker::Address.city)
end

23.times do
  puts "e"
  Dog.create(name:Faker::Lorem.word, city_id: rand(City.first.id..City.last.id))
end

10.times do
  puts "s"
  Dogsitter.create(first_name:Faker::Name.first_name , last_name:Faker::Name.last_name , city_id: rand(City.first.id..City.last.id))
end

50.times do
  puts "t"
  Stroll.create(dogsitter_id: rand(Dogsitter.first.id..Dogsitter.last.id), dog_id: rand(Dog.first.id..Dog.last.id))
end