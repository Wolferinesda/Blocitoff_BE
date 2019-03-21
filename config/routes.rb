Rails.application.routes.draw do
  get 'items/create'

  devise_for :users

  resources :users, only: [:show] do
    resource :items, only: [:create]
  end

  get 'about' => 'welcome#about'
  get 'blocitoff' => 'welcome#index'
  get 'users/show' => 'users#show'
  root 'users#show'
end
