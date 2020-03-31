Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  devise_for :users
  
  root :to => 'books#top'

  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
