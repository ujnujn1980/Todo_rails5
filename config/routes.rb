Rails.application.routes.draw do
  resources :items
  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/done/:id', to:  'items#done', as: 'done'
end
