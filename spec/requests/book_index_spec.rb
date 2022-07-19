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
    let(:book) {create(:book, title: 'Test Book')}
    ThinkingSphinx::Test.index                                   # ???
    get '/books', :params => {:query => 'Test Book'}             # ???
    it 'searching book in index' do
      expect(response.body).to eq('Test Book')                   # include   ???
    end
  end
end
