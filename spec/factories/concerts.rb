FactoryGirl.define do
  factory :concert do
    location { Faker::Address.city }
    venue { Faker::Name.name }
    success false
  end

end
