FactoryGirl.define do
  factory :band do
    name { Faker::Name.name }
    genre { Faker::Name.name }
    location { Faker::Address.city }
  end

end
