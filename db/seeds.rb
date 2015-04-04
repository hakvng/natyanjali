# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "Admin",
             email: "admin@admin.org",
             password:              "adminadmin",
             password_confirmation: "adminadmin",
             admin: true,
             verified: true,
             phone: 9999999999)

branch=Branch.create!(name: "Kothamangalam")

Course.create!(name: "Course1",
               fee: 2000,
               period: 6, branch_id: branch.id)
Course.create!(name: "Course2",
               fee: 2000,
               period: 6, branch_id: branch.id)
Course.create!(name: "Course3",
               fee: 2000,
               period: 6, branch_id: branch.id)

5.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@dance.org"
  password = "password"
  phone = 9897658979
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               phone: phone)
end

10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+10}@school.org"
  password = "password"
  phone = 9897658979
  user=User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               phone: phone,
               verified: true)
  user.enrollments.create!(course_id: rand(1..3))

end
