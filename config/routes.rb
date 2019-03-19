Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :users, only: [:show]
  get 'about' => 'welcome#about'
  get 'blocitoff' => 'welcome#index'
  get 'users/show'
  root 'welcome#index'
end
