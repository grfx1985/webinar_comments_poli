# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Actors.destroy_all
Film.destroy_all

50.times do
 f = Film.create(title: Faker::Book.title)
  5.times do
    Actor.create(name: Faker::Name.name, description: Faker::Hipster.paragraph(5), film: f)
  end
end

puts "DONE!"
