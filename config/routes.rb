Rails.application.routes.draw do
  resources :sales
  resources :artists
  get '/admin' => 'items#new'

  get '/main' => 'static_pages#main'

  get '/signin' => 'home#index'


  resources :appraisals
  resources :items
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#main'
end