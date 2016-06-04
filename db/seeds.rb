# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Equipment.create!(name:  "Example",
             model_number: "example",
             start_date:    "16:00")


99.times do |n|
  name  = Faker::Name.name
  model_number = "example-#{n+1}"
  time = "#{n+1}:00"
  Equipment.create!(name:  name,
               model_number: model_number,
               start_date: time)
end
