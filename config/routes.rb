Rails.application.routes.draw do
  get 'product/list'
  get 'cart/list'
  get 'cart/products'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
  #CART ROUTES
  post 'cart', to: 'cart#list'
  post 'cart/:id/current', to: 'cart#products'
  
  #PRODUCT ROUTES

  resources :carts do
    resources :products
  end

end
