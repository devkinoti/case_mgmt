class CaseTrial < ApplicationRecord
  belongs_to :address
  has_many :person_at_trials
end
