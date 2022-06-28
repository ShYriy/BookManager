require 'rails_helper'

RSpec.describe TakeBookService, type: :service do
  it 'raises exception when book stock is nil' do
    expect { TakeBookService.new(book: build(:book, stock_balance: nil)).call }.to raise_error(NoMethodError) # add error 
  end
end
