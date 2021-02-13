class BooksController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def check
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      redirect_to book_path(book.id), notice: 'Book was successfully created.'
    else
    end
  end

  private

  def book_params
    params.permit(:title, :body)
  end

end
