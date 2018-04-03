class AuthorsController < ApplicationController

  def index
    @authors = Author.new
  end
end
