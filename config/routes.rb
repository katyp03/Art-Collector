Rails.application.routes.draw do
  get 'clear_cart' => 'sales#clear_cart', as: 'delete_cart'
  resources :sales
  resources :artists
  get '/admin' => 'items#new'

  get '/main' => 'static_pages#main'

  get '/signin' => 'home#index'

  get '/items/date/:date' => 'home#date_search'

  get '/items/style/:style' => 'home#style_search'

  get '/items/medium/:medium' => 'home#medium_search'

  get '/items/size/:size' => 'home#size_search'

  get '/appraisals' => 'static_pages#main'

  post '/sales/add_cart/:id' => 'sales#add_cart', as: 'cart'

  patch 'items/:id/condition-upgrade' => 'items#upgrade', as: :item_upgrade

  patch 'items/:id/condition-downgrade' => 'items#downgrade', as: :item_downgrade



  resources :appraisals
  resources :items
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#main'
end
