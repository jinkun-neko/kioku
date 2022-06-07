FactoryBot.define do
  factory :contact do
    name { Faker::Lorem.characters(number: 5) }
    email { Faker::Internet.email }
    message { Faker::Lorem.characters(number: 200) }
  end
end
