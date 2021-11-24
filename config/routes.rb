Rails.application.routes.draw do
  resources :products
  # Get /home
  get "home", to: "home#index"
  get 'product', to:'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
