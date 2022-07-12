require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_many :books }

  it { is_expected.to define_enum_for(:role).with_values(user: 1, admin: 2, consumer: 3) }
end
