class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :first_building_number
      t.integer :second_building_number
      t.string :area_locality
      t.string :city
      t.string :zip_postcode
      t.string :state_province_county
      t.string :country

      t.timestamps
    end
  end
end
