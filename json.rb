require 'httparty'
require 'json'

url = 'https://data.cityofnewyork.us/resource/7btz-mnc8.json'
response = HTTParty.get(url)
puts response.parse_response
