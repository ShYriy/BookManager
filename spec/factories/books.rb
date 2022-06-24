FactoryBot.define do
  factory :book do
    title { 'Book' }
    stock_balance { 10 }
    pages_count { 100 }
    cover { :soft }
    user { build(:user) }
  end
end
