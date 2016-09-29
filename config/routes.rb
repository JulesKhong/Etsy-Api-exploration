Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'products#index'
  resources :products
  resources :videos
  resources :sessions
  get '/auth/:provider/callback', to: 'sessions#create'
end
