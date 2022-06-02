FactoryBot.define do
  factory :post do
    user_id { 1 }
    body { "jinkunは、とても立派です。" }
    image_id { "MyString" }
  end
end
