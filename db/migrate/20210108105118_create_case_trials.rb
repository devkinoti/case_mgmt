class CreateCaseTrials < ActiveRecord::Migration[6.1]
  def change
    create_table :case_trials do |t|
      t.string :trial_outcome_code
      t.string :trial_status_code
      t.references :address, null: false, foreign_key: true
      t.integer :case_reference_number
      t.string :trial_location_name
      t.datetime :trial_start_date
      t.time :expected_duration
      t.date :trial_end_date

      t.timestamps
    end
  end
end
