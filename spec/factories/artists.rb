FactoryGirl.define do
  factory :artist do
    name  { Faker::Name.name }
    bio   { Faker::Hipster.sentences(1) }
    remote_image_url { Faker::Internet.url }
  end
end
