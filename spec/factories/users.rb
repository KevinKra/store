FactoryBot.define do
  factory :user do
    username { Faker::Internet.username(specifier: 5..16) }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip { Faker::Address.zip }
    trait :default_user do
      role { 0 }
    end
    trait :admin_user do
      role { 1 }
    end
    trait :merchant_user do
      role { 2 }
    end
  end
end