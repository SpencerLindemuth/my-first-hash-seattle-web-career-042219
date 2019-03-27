require 'net/http'
require 'json'

url = 'https://data.cityofnewyork.us/resource/7btz-mnc8.json'
uri = URI(url)
response = Net::HTTP.get(uri)
JSON.parse(response)
