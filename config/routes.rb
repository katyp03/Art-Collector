Rails.application.routes.draw do
  get '/admin' => 'items#new'

  get '/main' => 'static_pages#main'

  get '/signin' => 'home#index'


  resources :appraisals
  resources :items
  resources :transactions
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#main'
end