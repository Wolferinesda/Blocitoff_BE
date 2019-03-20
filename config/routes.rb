Rails.application.routes.draw do
  get 'users/show'
  get 'items/create'

  devise_for :users

  resources :users, only: [:show] do
    resource :items, only: [:create]
  end
  
  get 'about' => 'welcome#about'
  get 'blocitoff' => 'welcome#index'
  get 'users/show'
  root 'welcome#index'
end
