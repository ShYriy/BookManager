require 'rails_helper'

RSpec.describe "BooksRequest", type: :request do
  describe "book request" do
    it '#take_book' do
      book = create(:book)
      expect(TakeBookService).to receive_message_chain(:new, :call)
      patch "/books/#{book.id}"
      expect(response).to be_redirect
      expect(assigns(:book)).to eq book
    end
  end
end
