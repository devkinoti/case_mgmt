class CreatePersonAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :person_addresses do |t|
      t.references :person, null: false, foreign_key: true
      t.references :address
      t.date :date_address_to
      t.date :date_address_from

      t.timestamps
    end
  end
end
