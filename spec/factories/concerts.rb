FactoryGirl.define do
  factory :concert do
    location { Faker::Address.city }
    venue { Faker::Name.name }
    band
  end

end
