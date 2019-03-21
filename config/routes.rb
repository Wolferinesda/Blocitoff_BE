Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  get 'about' => 'welcome#about'
  get 'blocitoff' => 'welcome#index'
  get 'users/show' => 'users#show'
  root 'users#show'
end
