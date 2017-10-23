# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

json_data = RestClient.get 'https://data.cityofnewyork.us/api/views/varh-9tsp/rows.json?accessType=DOWNLOAD'

parsed_json_data = JSON.parse(json_data)

puts parsed_json_data["data"]

parsed_json_data['data'].each do |hotspot_data|
  borough = Borough.find_or_create_by(name: hotspot_data[26])
  neighborhood = Neighborhood.find_by(name: hotspot_data[28]) || Neighborhood.create(name: hotspot_data[28], borough_id: borough.id)
  zipcode = Zipcode.find_by(zipcode_num: hotspot_data[30]) || Zipcode.create(zipcode_num: hotspot_data[30], neighborhood_id: neighborhood.id)
  Hotspot.create(latitude: hotspot_data[15], longitude: hotspot_data[16], service_provider: hotspot_data[12], closest_address: hotspot_data[14], service_type: hotspot_data[19], service_options: hotspot_data[20], network_name: hotspot_data[22], hotspot_city_id: hotspot_data[23], zipcode_id: zipcode.id)
end
