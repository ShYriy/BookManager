require 'rails_helper'

RSpec.describe Item, type: :model do
  it { is_expected.to belong_to :user }
  it { is_expected.to have_and_belong_to_many :authors }
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_length_of(:title).is_at_least(2) }
  it { is_expected.to validate_presence_of :pages_count }
  it { is_expected.to validate_presence_of :stock_balance }
end
