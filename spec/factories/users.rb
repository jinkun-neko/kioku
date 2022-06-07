FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "NAME#{n}"}
    sequence(:email) { |n| "tester#{n}@example.com" }
    password              {"jinjin"}
    password_confirmation {"jinjin"}
    confirmed_at { Date.today }
  end
end
