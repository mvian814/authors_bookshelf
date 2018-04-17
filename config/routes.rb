Rails.application.routes.draw do
  root 'authors#index'
  get '/authors' => 'authors#index', as: :authors

  get '/authors/new' => 'authors#new', as: :new_author
  post '/authors' => 'authors#create', as: :create_authors


  get '/books' => 'books#index', as: :books
  get '/books/new' => 'books#new', as: :new_book
  post '/books' => 'books#create', as: :create_books

end
