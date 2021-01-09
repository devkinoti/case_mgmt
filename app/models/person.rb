class Person < ApplicationRecord
    has_many :person_roles
    has_many :person_addresses
end
