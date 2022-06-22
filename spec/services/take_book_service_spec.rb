require 'rails_helper'

RSpec.describe TakeBookService, type: :service do
  it 'raises exception when book stock is nil' do
    expect { TakeBookService.new(book: build(:book, stock: nil)).call }.to raise_exception
  end
end
