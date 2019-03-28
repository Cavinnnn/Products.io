Rails.application.routes.draw do
  resources :lrofiles
  root to: "products#index"
  get '/products', action: :product, controller: 'products'
  get '/products/:id', action: :product_detail, controller: 'products', as: 'product'
  get '/catagory', action: :catagory, controller: 'products', as: 'catagory'
  get '/products', action: :search, controller: 'application'

  get '/orders/items', to:'orders#cart', as: 'orders'
  resources :orders, path: '/orders/items'
  

  get '/orders/checkout', to:'checkout#index', as: 'checkout'
  post '/orders/checkout', to:'checkout#create'

  devise_for :users
  
  get '/profile/new', to:'profiles#new'
  get '/profile/:id', to:'profiles#show'
  resources :profiles, path: '/profile/new'
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
end
