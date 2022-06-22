FactoryBot.define do
  factory :user do
    name { "User" }
    email { "user@user.com" }
    role { 1 }
  end
end
