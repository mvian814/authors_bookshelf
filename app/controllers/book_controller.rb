class BookController < ApplicationController
  def index
    @books = Books.all
  end

  def new
    @book = Book.new
    @authors = Author.all.map {|author| [author.name, author_id]}
  end

  def create
    @book = Book.new(book_params)
    if
      @book.save
      redirect_to books_path
    else
      render 'new'
    end
  end


  private

  def book_params
    params.require(:book).permit([:title, :isbn, :summary])
  end




end
