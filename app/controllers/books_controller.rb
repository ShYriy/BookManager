class BooksController < ApplicationController
  def index
    authorize!
    @books = Book.all
  end

  def show
    @book = Book.find params[:id]
    authorize! @book
  end

  def new
    @book = Book.new
  end

  def create
    @book = current_user.books.build(permitted_params)
    authorize! @book
    if @book.save
      flash[:notice] = 'Book created!'
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find params[:id]
    authorize! @book
  end

  def update
    @book = Book.find params[:id]
    authorize! @book
    if @book.update permitted_params
      flash[:notice] = 'Book updated!'
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find params[:id]
    authorize! @book
    @book.destroy
    flash[:notice] = 'Book deleted!'
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

  def user_not_authorized
    flash[:error] = 'Not autorized!'
    redirect_to(request.referer || root_path)
  end

  # def collection
  #   Book.all
  # end

  # def resource
  #   collection.find(params[:id])
  # end

  def permitted_params
    params.require(:book).permit(
      :title,
      :pages_count,
      :stock_balance,
      :print_date,
      :cover,
      author_ids: []
    )
  end
end
