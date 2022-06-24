FactoryBot.define do
  factory :user do
    name { 'User' }
    sequence(:email) { |n| "person#{n}@test.com" }
    password { '12345678' }
    role { 1 }
  end
end
