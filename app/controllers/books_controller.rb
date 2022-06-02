class BooksController < ApplicationController
  # before_action :authenticate_user!          ?
  def index
    authorize!
    @books = Book.all
  end

  def show
    @book = Book.find params[:id]
  end

  def new
    @book = Book.new
  end

  def create
    authorize!
    @book = Book.new permitted_params
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find params[:id]
  end

  def update
    @book = Book.find params[:id]
    authorize!
    if @book.update permitted_params
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find params[:id]
    @book.destroy
    redirect_to books_path
  end

  def take_book
    @book = Book.find params[:id]
    TakeBookService.new(book: @book, user: User.find(@book.user_id)).call  # ?
    #  @book.update() ?
    redirect_to books_path
  end

  def return_book
    @book = Book.find params[:id]
    ReturnBookService.new(book: @book, user: find(@book.user_id)).call  # ?
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
    params.require(:book).permit(:title)  # author ?
  end
end
