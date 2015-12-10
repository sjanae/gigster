FactoryGirl.define do
  factory :fan do
    email { Faker::Internet.email }
    password_digest { Faker::Internet.password }
    location { Faker::Address.city }
  end

end
