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

Course.create!(name: "Course1",
               fee: 2000,
               period: 6)
Course.create!(name: "Course2",
               fee: 2000,
               period: 6)
Course.create!(name: "Course3",
               fee: 2000,
               period: 6)

