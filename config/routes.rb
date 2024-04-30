# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "items", to: "items#index", as: "items"
  get "items/:id", to: "items#show", as: "item"
  get "category/:id", to: "categories#show"

  get 'cart', to: 'cart#show', as: 'cart'
  resources :items, only: [:show] do
    post 'add_to_cart', on: :member
    post 'favoriting_item', on: :member
  end
  delete 'remove_item/:item_id', to: 'items#remove_item_from_cart', as: 'remove_item_from_cart'

  get 'favorite', to: 'favorite#show', as: 'favorite'
  delete 'unfavorite_item/:item_id', to: 'items#unfavoriting_item', as: 'unfavoriting_item'
  

  resource :cart, only: [:show]

  root to: redirect('/index')

  get 'index', to: 'pages#index', as: 'index'

  get 'account', to: 'pages#account', as: 'account'


  get 'membership', to: 'pages#membership', as: 'membership'
  get 'padawan', to:'pages#padawan',as:'padawan'
  get 'jedi', to: 'pages#jedi',as: 'jedi'
  get 'apprentice', to: 'pages#apprentice',as: 'apprentice'

  patch 'membership_signup', to: 'pages#membership_signup', as: 'membership_signup'


  resources :items do
    resources :reviews, module: :items
  end

  get 'checkout', to: 'cart#checkout', as: 'checkout'


  get 'carts', to: 'cart#index', as: 'purchases'



  post 'cart/process_payment'

  get 'payments/new'
  post 'payments/process_payment'



  resources :hologram, only: [:index, :show] do
    resources :booking, only: [:new, :create]
  end
  post '/holograms/:hologram_id/bookings', to: 'booking#create', as: 'create_booking'
  get '/bookings', to: 'booking#index', as: 'bookings_index'

  # get '/holograms', to: 'hologram#index', as: 'holograms'
  # get '/holograms/:id', to: 'hologram#show', as: 'hologram'

  # get '/bookings/new', to: 'booking#new', as: 'new_booking'
  # post '/bookings', to: 'booking#create', as: 'create_booking'
  # get '/bookings/:id', to: 'booking#show', as: 'booking'
  # get '/bookings', to: 'booking#index', as: 'bookings_index'


end
