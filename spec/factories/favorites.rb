FactoryBot.define do
  factory :favorite do
    association :user
    association :post
    user_id { 1 }
    post_id { 1 }
  end
end
