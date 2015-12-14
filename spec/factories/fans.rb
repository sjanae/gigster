FactoryGirl.define do
  factory :fan do
    location { Faker::Address.city }
  end

end
