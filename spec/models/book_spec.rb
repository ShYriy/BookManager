require 'rails_helper'

RSpec.describe Book, type: :model do
  it { is_expected.to have_and_belongs_to_many :author }
end
