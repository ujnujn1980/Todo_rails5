Rails.application.routes.draw do
  devise_for :users
  get      'home/index'
  root to: "home#index"
 
  #resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get     '/done/:id',      to: 'items#done',   as: 'done'
  get     '/patients/:id',  to: 'items#show',   as: 'patient'
  get     '/items/new/:id', to: 'items#new' ,   as: 'new_item'
  get     '/list/:id',      to: 'items#index' , as: 'list_items'
  post    '/list/:id',      to: 'items#create' 

  # get     '/tags/',         to: 'tags#index' ,  as: 'tags'
  # post    '/tags/',         to: 'tags#create'
  # get     '/tags/new',      to: 'tags#new' ,    as: 'new_tag'
  # get     '/tag/:id',       to: 'tags#index',   as: 'index_tag'
  # patch   '/tag/:id',       to: 'tags#index',   as: 'index_tag'
  # #put     '/tag/:id',       to: 'tags#index',   as: 'index_tag'
  # delete  '/tag/:id',       to: 'tags#destroy', as: 'tag'
  # get     '/tag/:id/edit',  to: 'tags#edit',    as: 'edit_tag'

  resources :items, except: [:new]
  resources :lists 
  resources :tags 
end
