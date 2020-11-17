FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { "123321" }
    password_confirmation { "123321" }
    profile { %i(admin client).sample }
  end
end