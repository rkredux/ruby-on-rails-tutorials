Rails.application.routes.draw do
 
  # all routes for 
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  #all routes for static pages
  root "static_pages#home"
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  
  #all routes for User sign up
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #By adding a resources Users here we are referencing our User model in the 
  #database. In the REST architecture, we can do CRUD Operations on our resources
  #as a result of adding the line below. This is basically calling the rails 
  #method resources and passing it our Users argument. Remmeber every instance of
  #Users is an instance of the ActiveRecord class. In other words, every user is an
  #ActiveRecord object. 
  resources :users
end
