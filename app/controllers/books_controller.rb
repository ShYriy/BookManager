class BooksController < ApplicationController
  def index
    @books = collection
  end

  def show
    @book = collection.find params[:id]
  end

  def new
    @book = collection.new
  end

  def edit
    @book = collection.find params[:id]
  end

  def update
    @book = collection.find params[:id]
    if resource.update permitted_params
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book = collection.find params[:id]
    @book.destroy
    redirect_to books_path
  end

  def create
    @book = collection.new permitted_params
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  private

  def collection
    Book.all
  end

  def resource
    collection.find(params[:id])
  end

  def permitted_params
    params.require(:book).permit(:title)  # author ?
  end
end
