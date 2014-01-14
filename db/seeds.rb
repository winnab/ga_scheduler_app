# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Date.new(2013, 10, 30)
# Rails date and time objects 
# Course.delete_all
# course1 = Course.create!(
#     name: 'WDI',
#     # lead_instructor: 'Gerry',
#     # producer: 'Gordon',
#     max_attendees: 20
#     )

# Room.delete_all
# room1 = Room.create!(
#     name: 'Back Right',
#     max_occupancy: 30,
#     first_avail_time: DateTime.parse("8:00"),
#     last_avail_time: DateTime.parse("20:00")
#     )

User.delete_all
User.create!(
    first_name: 'Neha',
    last_name: 'Shah',
    role: 'Student',
    email: 'neha@neha.com',
    password: 'test123',
    password_confirmation: 'test123'
    )

User.create!(
    first_name: 'Sophie',
    last_name: 'Chitty',
    role: 'Student',
    email: 'sophie@sophie.com',
    password: 'test123',
    password_confirmation: 'test123'
    )

User.create!(
    first_name: 'Gerry',
    last_name: 'Mathe',
    role: 'Instructor',
    email: 'gerry@gerry.com',
    password: 'test123',
    password_confirmation: 'test123'
    )

User.create!(
    first_name: 'Jon',
    last_name: 'Chambers',
    role: 'Instructor',
    email: 'jon@jon.com',
    password: 'test123',
    password_confirmation: 'test123'
    )

User.create!(
    first_name: 'Gordon',
    last_name: 'MacRae',
    role: 'Producer',
    email: 'gordon@gordon.com',
    password: 'test123',
    password_confirmation: 'test123'
    )

User.create!(
    first_name: 'Winna',
    last_name: 'Bridgewater',
    role: 'Admin',
    email: 'winna@winna.com',
    password: 'test123',
    password_confirmation: 'test123'
    )