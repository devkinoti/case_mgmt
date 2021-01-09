FactoryBot.define do
  factory :person_at_trial do
    case_trial { nil }
    person_role { nil }
    appearance_start_datetime { "2021-01-08 13:53:46" }
    appearance_end_time { "2021-01-08 13:53:46" }
  end
end
