FactoryBot.define do
  factory :address do
    first_building_number { 1 }
    second_building_number { 1 }
    area_locality { "MyString" }
    city { "MyString" }
    zip_postcode { "MyString" }
    state_province_county { "MyString" }
    country { "MyString" }
  end
end
