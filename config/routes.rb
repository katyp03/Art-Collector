Rails.application.routes.draw do
  resources :sales
  resources :artists
  get '/admin' => 'items#new'

  get '/main' => 'static_pages#main'

  get '/signin' => 'home#index'

  get '/items/date/:date' => 'home#date_search'

  get '/items/style/:style' => 'home#style_search'

  get '/items/medium/:medium' => 'home#medium_search'

  get '/items/size/:size' => 'home#size_search'

  resources :appraisals
  resources :items
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#main'
end
