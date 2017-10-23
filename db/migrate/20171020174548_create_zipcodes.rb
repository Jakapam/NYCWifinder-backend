class CreateZipcodes < ActiveRecord::Migration[5.1]
  def change
    create_table :zipcodes do |t|
      t.integer :zipcode_num
      t.integer :neighborhood_id
      t.timestamps
    end
  end
end
