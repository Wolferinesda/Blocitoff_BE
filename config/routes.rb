Rails.application.routes.draw do
<<<<<<< HEAD
  get 'users/show'
  get 'items/create'

=======
>>>>>>> user_profiles
  devise_for :users

  resources :users, only: [:show] do
    resource :items, only: [:create]
  end
  
  get 'about' => 'welcome#about'
  get 'blocitoff' => 'welcome#index'
  get 'users/show' => 'users#show'
  root 'users#show'
end
