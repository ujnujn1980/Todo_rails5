Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root to: "home#index"
 
  #resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/done/:id', to:  'items#done', as: 'done'
  #root to: "lists#index"
  #get '/patients/:id', to: 'items#show'
  get '/patients/:id', to: 'items#show', as: 'patient'
  get '/items/new/:id', to: 'items#new' , as: 'new_item'
  get '/list/:id', to: 'items#index' , as: 'list_items'
  post '/list/:id', to: 'items#create' 

  resources :items, except: [:new]
  resources :lists 
end
