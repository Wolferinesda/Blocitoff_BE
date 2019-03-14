Rails.application.routes.draw do
  devise_for :users
  get 'about' => 'welcom#about'
  get 'blocitoff' => 'welcome#indes'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
