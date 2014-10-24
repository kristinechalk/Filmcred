FactoryGirl.define do
  factory :company do |c|
    c.type "Company"
    c.name      {Faker::Company.name}
    c.email      {Faker::Internet.safe_email}
    c.password    '123'
    c.icon      {Faker::Company.logo}
    
  end
end
