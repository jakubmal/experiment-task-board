Rails.application.routes.draw do
  resources :tasks
  resources :tabs
  resources :boards
  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
