FactoryGirl.define do
  factory :pledge do
    user_id { Faker::Name.name }
    concert_id { Faker::Name.name }
    price { Faker::Name.name }
  end
end
