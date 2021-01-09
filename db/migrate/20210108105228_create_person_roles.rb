class CreatePersonRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :person_roles do |t|
      t.references :person, null: false, foreign_key: true
      t.string :role_code
      t.date :date_role_from
      t.date :date_role_to

      t.timestamps
    end
  end
end
