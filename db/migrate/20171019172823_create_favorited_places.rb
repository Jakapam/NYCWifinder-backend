class CreateFavoritedPlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :favorited_places do |t|
      t.integer :user_id
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
