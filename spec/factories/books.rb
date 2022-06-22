FactoryBot.define do
  factory :book do
    title { Book }
    stock_balance { 10 }
    pages_count { 100 }
    cover { 1 }
    user_id { 2 }
  end
end
