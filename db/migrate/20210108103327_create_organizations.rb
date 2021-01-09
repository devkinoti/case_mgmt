class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.integer :organization_type_code
      t.string :organization_type

      t.timestamps
    end
  end
end
