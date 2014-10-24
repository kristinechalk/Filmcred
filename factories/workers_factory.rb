FactoryGirl.define do
  factory :worker do
    name     Faker::Name.name
    email    Faker::Internet.safe_email
    type      "Worker"
    password  "123"
  end
end
