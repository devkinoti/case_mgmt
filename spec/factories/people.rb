FactoryBot.define do
  factory :person do
    first_name { "MyString" }
    middle_name { "MyString" }
    last_name { "MyString" }
    date_of_birth { "2021-01-08" }
    gender { "MyString" }
  end
end
