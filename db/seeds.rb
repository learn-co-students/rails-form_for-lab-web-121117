# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s1 = Student.create(first_name: "First Name 01", last_name: "Last Name 01")
s2 = Student.create(first_name: "First Name 02", last_name: "Last Name 02")
s3 = Student.create(first_name: "First Name 03", last_name: "Last Name 03")

sc1 = SchoolClass.create(title: "Title 01", room_number: "Room number 01")
sc2 = SchoolClass.create(title: "Title 02", room_number: "Room number 02")
sc3 = SchoolClass.create(title: "Title 03", room_number: "Room number 03")
