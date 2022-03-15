Rails.application.routes.draw do
  get 'dashboard/home'
  resources :photos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#home"
end
