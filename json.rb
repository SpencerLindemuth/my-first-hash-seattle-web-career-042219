require 'httparty'
require 'json'

url = 'https://data.cityofnewyork.us/resource/7btz-mnc8.json'
response = HTTParty.get(url)
list = response.parsed_response
list.each do |x|
  if x["practice_borough"] == "Staten Island"
    puts "#{x["provider_first_name"]} #{x["provider_last_name"]}"
  end
end
