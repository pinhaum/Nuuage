FactoryBot.define do
  factory :game do
    mode { %i(pvp pve both).sample }
    realease_date { "2020-11-17 12:18:56" }
    developer { Faker::Company.name }
    system_requirement 
  end
end
