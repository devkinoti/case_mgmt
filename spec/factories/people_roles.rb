FactoryBot.define do
  factory :people_role do
    role_code { "MyString" }
    date_role_from { "2021-01-08" }
    date_role_to { "2021-01-08" }
    person { nil }
  end
end
