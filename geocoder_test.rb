require 'rubygems'
require 'geocoder'
require 'open-uri'
require 'json'

puts "What is your address? EX: 1725 Slough Avenue, Scranton, PA, 18505"
address = gets

result = Geocoder.search(address)

lat = result.first.coordinates[0]

lon = result.first.coordinates[1]

url = 'https://api.darksky.net/forecast/0a08b825121b4fa5cb88137efedb0b87/'+lat.to_s+','+lon.to_s

buffer = open(url).read

parsed = JSON.parse(buffer)

timezone = parsed["timezone"]
currently = parsed["currently"]["summary"]
hourly = parsed["hourly"]["summary"]
degrees = parsed["currently"]["temperature"]

puts "In #{timezone}, it is currently #{currently} and #{degrees} degrees. The rest of the day will be #{hourly}"



