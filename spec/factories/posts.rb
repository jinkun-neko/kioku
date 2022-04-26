FactoryBot.define do
  factory :post do
    user_id { 1 }
    body { "MyText" }
    image_id { "MyString" }
  end
end
