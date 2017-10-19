class CreateHotspots < ActiveRecord::Migration[5.1]
  def change
    create_table :hotspots do |t|
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
