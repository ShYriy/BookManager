class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find params[:id]
  end

  def new
    @book = Book.new
  end

  def create
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
