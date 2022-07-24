require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'pages_count' do
    let(:book) { build(:book) }
    subject { book.pages_count }
    it { is_expected.to eq 100 }
  end

  it { is_expected.to define_enum_for(:cover).with_values(hard: 1, soft: 2) }
  it { is_expected.to validate_length_of(:title).is_at_least(2) }
  it { is_expected.to validate_presence_of :pages_count }
  it { is_expected.to validate_presence_of :stock_balance }
  it { is_expected.to validate_presence_of :title }
end
