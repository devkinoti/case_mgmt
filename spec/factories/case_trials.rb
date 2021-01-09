FactoryBot.define do
  factory :case_trial do
    trial_outcome_code { "MyString" }
    trial_status_code { "MyString" }
    address { nil }
    case_reference_number { 1 }
    trial_location_name { "MyString" }
    trial_start_date { "2021-01-08 13:51:18" }
    expected_duration { "2021-01-08 13:51:18" }
    trial_end_date { "2021-01-08" }
  end
end
