FactoryBot.define do
  factory :person_address do
    person { nil }
    address { "" }
    date_address_to { "2021-01-08" }
    date_address_from { "2021-01-08" }
  end
end
