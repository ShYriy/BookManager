class ReturnBookService
  def initialize(book:, user: nil)
    @book = book
    @user = user
  end

  def call
    @book.stock_balance += 1    # @book&.stock_balance += 1 - always without errors
    @book.save!                 # @book&.save!              - &
  end
end
