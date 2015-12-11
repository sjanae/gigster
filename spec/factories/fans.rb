FactoryGirl.define do
  factory :fan do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    location { Faker::Address.city }
  end

end
