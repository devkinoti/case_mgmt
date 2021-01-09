class CreateOrganizationAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :organization_addresses do |t|
      t.references :organization, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.date :date_address_from
      t.date :date_address_to

      t.timestamps
    end
  end
end
