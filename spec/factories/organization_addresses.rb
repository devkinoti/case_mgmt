FactoryBot.define do
  factory :organization_address do
    organization { nil }
    address { nil }
    date_address_from { "2021-01-08" }
    date_address_to { "2021-01-08" }
  end
end
