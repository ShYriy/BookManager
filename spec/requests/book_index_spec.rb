require 'rails_helper'

RSpec.describe "BookIndex", type: :request do
  # describe "book index" do
  #   Book.create(title: 'Test Book')
  #   ThinkingSphinx::Test.index
  #   it "should index title" do
  #     expect(Book.search("Test Book").records.length).to eq(1)
  #   end
  # end

  describe "book index" do
    let(:book) { create(:book, title: 'Test Book') }

    it 'searching book in index' do
      get '/books', :params => { :query => 'Test Book' }
      expect(response.body).to include(:book)                   # include   ???
    end
  end
end
