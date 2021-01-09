class PersonAtTrial < ApplicationRecord
  belongs_to :case_trial
  belongs_to :person_role
end
