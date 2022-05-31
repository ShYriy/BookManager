class TakeBookService
  def initialize(book:, user: nil)
    @book = book
    @user = user
  end

  def call
    @book.stock_balance -= 1
    @user
  end
end
