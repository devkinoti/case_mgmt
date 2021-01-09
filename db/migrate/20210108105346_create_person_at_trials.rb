class CreatePersonAtTrials < ActiveRecord::Migration[6.1]
  def change
    create_table :person_at_trials do |t|
      t.references :case_trial, null: false, foreign_key: true
      t.references :person_role, null: false, foreign_key: true
      t.datetime :appearance_start_datetime
      t.datetime :appearance_end_time

      t.timestamps
    end
  end
end
