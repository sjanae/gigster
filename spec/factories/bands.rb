FactoryGirl.define do
  factory :band do
    password_digest { Faker::Internet.password }
    name { Faker::Name.name }
    genre { Faker::Name.name }
    location { Faker::Address.city }
    email { Faker::Internet.email }
  end

end
