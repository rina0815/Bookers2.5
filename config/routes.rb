Rails.application.routes.draw do
  root 'home#top'
  get 'home/about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
  resource :favorites,only: [:create, :destroy, :create_shoe, :destroy_show]
  end
end