Rails.application.routes.draw do
  resources :categories
  resources :products
  # Get /home
  get "home", to: "home#index"
  get 'product', to:'products#index'
  root 'home#index'
  get 'category', to: 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
