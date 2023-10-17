FactoryBot.define do
  factory :post do
    id { Faker::Lorem.rand(100) }
    member_id { Faker::Lorem.rand(100) }
    post_text { Faker::Lorem.characters(number:20) }
  end
end