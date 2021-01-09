FactoryBot.define do
  factory :person_role do
    person { nil }
    role_code { "MyString" }
    date_role_from { "2021-01-08" }
    date_role_to { "2021-01-08" }
  end
end
