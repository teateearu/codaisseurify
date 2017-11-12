FactoryGirl.define do
  factory :artist do
    name  { Faker::Name.name }
    alive   { Faker::Boolean.boolean }
  end
end
