class CreatePeopleRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :people_roles do |t|
      t.string :role_code
      t.date :date_role_from
      t.date :date_role_to
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
