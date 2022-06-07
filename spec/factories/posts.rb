FactoryBot.define do
  factory :post do
    association :user
    image_id { Faker::Lorem.characters(number: 10) }
    body  { Faker::Lorem.characters(number: 10) }
  end
end
