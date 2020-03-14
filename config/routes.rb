Rails.application.routes.draw do
  resources :articles
  resources :books
  resources :robots
  root :to =>  'robots#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
