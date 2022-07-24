require 'rails_helper'

# RSpec.describe "BooksRequest", type: :request do
#   describe "book request" do
#     it '#take_book' do
#       book = create(:book)
#       expect(TakeBookService).to receive_message_chain(:new, :call)
#       patch "/books/#{book.id}"
#       expect(response).to be_redirect
#       expect(assigns(:book)).to eq book
#     end
#   end
# end

RSpec.describe "BookIndex", type: :request do
  describe "book index" do
    # let(:book) { create(:book, title: book_title) }
    # let(:book_title) { 'My Book Title' }
    # it 'searches' do
    #   expect(Book).to receive(:search).with(book_title).and_return [book]
    #   get '/books', :params => { :query => book_title }
    # end

    # let(:book) { create(:book, title: 'Test Book') }
    # it 'searching book in index' do
    #   get '/books', :params => { :query => 'Test Book' }
    #   expect(response.body).to include(:book)
    # end
  end
end
