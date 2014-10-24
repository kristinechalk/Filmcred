FactoryGirl.define do
  factory :company do
    type "Company"
    name      Faker::Company.name
    email      Faker::Internet.safe_email
    password    '123'
    
  end
end
