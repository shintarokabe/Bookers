class BooksController < ApplicationController
  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end


  def new
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id), notice: 'Book was successfully created.'
    else
      @books = Book.all
      # @book = Book.new
      render "new"
    end


  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id), notice: 'Book was successfully updateed.'
    else
      @books = Book.all
      render "edit"
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to new_book_path, notice: 'Book was successfully destroyed.'
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
