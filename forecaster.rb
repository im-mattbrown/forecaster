require 'rubygems'
require 'geocoder'
require 'open-uri'
require 'json'

puts "What is your address? EX: 1725 Slough Avenue, Scranton, PA, 18505"
address = gets

result = Geocoder.search(address)

lat = result.first.coordinates[0]

lon = result.first.coordinates[1]

url = "https://api.darksky.net/forecast/0a08b825121b4fa5cb88137efedb0b87/#{lat},#{lon}"

buffer = open(url).read

parsed = JSON.parse(buffer)

location = address.split(',')[1]
currently = parsed["currently"]["summary"].downcase
hourly = parsed["hourly"]["summary"].downcase
degrees = parsed["currently"]["temperature"]
extended = parsed["daily"]["summary"].downcase

puts "\n In #{location}, it is currently #{currently} and #{degrees} degrees. The forecast for the rest of the day will be #{hourly} The extended forecast will be #{extended}"

if currently == "clear"
  puts  %q(
           ;   :   ;
        .   \_,!,_/   ,
         `.,'     `.,'
          /         \
     ~ -- :         : -- ~
          \         /
         ,'`._   _.'`.
        '   / `!` \   `
           ;   :   ;
         )
else currently == "overcast" || "mostly cloudy"
  puts %q(
          .-~~~-.
  .- ~ ~-(       )_ _
 /                     ~ -.
|                           \
 \                         .'
  ~- . _____________ . -~
  )
end

