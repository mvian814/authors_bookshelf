Rails.application.routes.draw do
 gets 'authors' => 'authors#index', as: :authors
end
