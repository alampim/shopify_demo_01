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
  post 'product/all', to: 'product#all'
  post 'product/all/stocked', to: 'product#stocked'
  post 'product/:id/purchase', to: 'product#purchase'
  resources :carts do
    resources :products
  end

end
