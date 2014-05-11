# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.find_or_create_by!( email: 'admin@example.com') do |u|
  u.password = "password"
  u.password_confirmation = "password"
end

User.find_or_create_by!( email: 'admin@example.com') do |u|
  u.lastfm_id = "reiji16g"
  u.name = "SampleUser"
  u.email = "admin@example.com"
  u.password = "password"
  u.password_confirmation = "password"
end
