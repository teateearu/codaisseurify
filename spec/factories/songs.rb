FactoryGirl.define do
  factory :song do
    title   { Faker::Name.name }
    year { Faker::Number.between(1000, 2017) }
  end
end
