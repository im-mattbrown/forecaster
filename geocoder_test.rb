require 'rubygems'
require 'geocoder'
require 'open-uri'

puts "What is your address"
address = gets

result = Geocoder.search(address)

lat = result.first.coordinates[0]

lon = result.first.coordinates[1]

puts lat

puts lon


