class Address < ApplicationRecord
    has_many :organization_addresses
    has_many :case_trials
    has_many :person_addresses
end
