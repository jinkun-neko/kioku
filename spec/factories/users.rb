FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "TEST_NAME#{n}"}
    sequence(:email) { |n| "test1225#{n}@example.com"}
    password              {"jinjin"}
    password_confirmation {"jinjin"}
  end
end
