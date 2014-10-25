FactoryGirl.define do
  factory :worker do |w|
    w.name     {Faker::Name.name}
    w.email    {Faker::Internet.safe_email}
    w.type      "Worker"
    w.password  "123"
    w.icon     {Faker::Avatar.image}
    w.company {Faker::Company.name}
    w.city {Faker::Address.city}
    w.phone_number {Faker::PhoneNumber.phone_number}

  end
end
