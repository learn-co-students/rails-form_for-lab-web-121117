# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Kevin", last_name: "Randles")
Student.create(first_name: "Mark", last_name: "Bello")
Student.create(first_name: "Julien", last_name: "Tregoat")
Student.create(first_name: "Oleg", last_name: "Chursin")
Student.create(first_name: "Nemanja", last_name: "Drakulovic")

SchoolClass.create(title: "Ruby 101", room_number: 101)
SchoolClass.create(title: "Advanced Javascript", room_number: 202)
SchoolClass.create(title: "Underwater Basketweaving", room_number: 303)
SchoolClass.create(title: "Demystifying Rails", room_number: 404)
SchoolClass.create(title: "Rails Forms: How to Not Write HTML", room_number: 505)