class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
    @genre = [
      "Science fiction",
      "Satire",
      "Drama",
      'Action and Adventure',
      "Romance",
      'Mystery',
      "Horror",
      "Self help",
      "Health",
      "Guide",
      "Travel",
      "Children's",
      "Religion, Spirituality & New Age",
      "Science",
      "History",
      "Math",
      "Anthology",
      "Poetry",
      "Encyclopedias",
      "Dictionaries",
      "Comics",
      "Art",
      "Cookbooks",
      "Diaries",
      "Journals",
      "Prayer books",
      "Series",
      "Trilogy",
      "Biographies",
      "Autobiographies",
      "Fantasy",
    ]
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to authors_path
    else
      render 'new'
    end
  end




private

def author_params

  params.require(:author).permit([:first_name, :last_name, :bio,
    :genre, :publisher])


end


end
