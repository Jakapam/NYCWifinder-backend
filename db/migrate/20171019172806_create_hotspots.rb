class CreateHotspots < ActiveRecord::Migration[5.1]
  def change
    create_table :hotspots do |t|
      t.integer :zipcode_id
      t.float :latitude
      t.float :longitude
      t.string :service_provider
      t.string :closest_address
      t.string :service_type
      t.string :service_options
      t.string :city
      t.string :network_name
      t.string :hotspot_city_id
      t.timestamps
    end
  end
end
