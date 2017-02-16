Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root to: "home#index"
 
  resources :items
  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/done/:id', to:  'items#done', as: 'done'
  #root to: "lists#index"
end
