Rails.application.routes.draw do
 

  root "static_pages#home"
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #By adding a resources Users here we are referencing our User model in the 
  #database. In the REST architecture, we can do CRUD Operations on our resources
  #as a result of adding the line below. This is basically calling the rails 
  #method resources and passing it our Users argument. 
  resources :users
end
