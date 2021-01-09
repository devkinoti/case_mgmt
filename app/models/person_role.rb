class PersonRole < ApplicationRecord
  belongs_to :person
  has_many :person_at_trials
end
