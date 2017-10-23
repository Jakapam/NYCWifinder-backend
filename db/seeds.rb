# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

json_data = RestClient.get 'https://data.cityofnewyork.us/api/views/varh-9tsp/rows.json?accessType=DOWNLOAD'

parsed_json_data = JSON.parse(json_data)

byebug

puts parsed_json_data["data"]


# Borough.find_or_create_by(name: )
