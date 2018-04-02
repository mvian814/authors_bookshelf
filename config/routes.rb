Rails.application.routes.draw do
  root 'authors#index'
  get 'authors' => 'authors#index', as: :authors
end
