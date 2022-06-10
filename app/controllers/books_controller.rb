class BooksController < ApplicationController
  def index
    # authorize!
    @books = Book.all
  end

  def show
    # authorize! @book
    @book = Book.find params[:id]
  end

  def new
    @book = Book.new
  end

  def create
    # authorize! @book
    @book = Book.new permitted_params
    if @book.save
      flash[:success] = 'Book created!'
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    # authorize! @book
    @book = Book.find params[:id]
  end

  def update
    @book = Book.find params[:id]
    # authorize! @book
    if @book.update permitted_params
      flash[:success] = 'Book updated!'
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    # authorize! @book
    @book = Book.find params[:id]
    @book.destroy
    flash[:success] = 'Book deleted!'
    redirect_to books_path
  end

  def take_book
    @book = Book.find params[:id]
    TakeBookService.new(book: @book, user: current_user).call
    redirect_to books_path
  end

  def return_book
    @book = Book.find params[:id]
    ReturnBookService.new(book: @book, user: current_user).call
    redirect_to books_path
  end

  private

  # def collection
  #   Book.all
  # end

  # def resource
  #   collection.find(params[:id])
  # end

  def permitted_params
    params.require(:book).permit(:title, :pages_count, :stock_balance)  # author ?
  end
end
