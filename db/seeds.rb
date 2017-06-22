# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

sensors = Sensor.create([
	{ name: 'sensor01', location: 'Cocina' }, 
	{ name: 'sensor02', location: 'Puerta principal' },
	{ name: 'sensor03', location: 'Habitación principal' }, 
	{ name: 'sensor04', location: 'Habitación niños 1' }, 
	{ name: 'sensor05', location: 'Habitación niños 2' }, 
	{ name: 'sensor06', location: 'Baño 1' }, 
	{ name: 'sensor07', location: 'Baño 2' }
])

sensors.each do |sensor|
	100.times { Measurement.create({
		value: rand(1, 100),
		timestamp: Faker::Time.between(DateTime.now - 1, DateTime.now),
        sensor: sensor
        }) }
	end
end
