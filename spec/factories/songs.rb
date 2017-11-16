FactoryGirl.define do
  factory :song do
    title   { Faker::Name.name }
    year { Faker::Number.number(4) }
  end
end
