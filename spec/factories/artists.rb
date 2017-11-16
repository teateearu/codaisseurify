FactoryGirl.define do
  factory :artist do
    name  { Faker::Name.name }
    alive   { Faker::Boolean.boolean }
    remote_image_url { Faker::Internet.url }
  end
end
