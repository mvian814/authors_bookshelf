class BookController < ApplicationController
  def index
    @books = Books.all

  end
end
