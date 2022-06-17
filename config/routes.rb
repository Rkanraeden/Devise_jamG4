Rails.application.routes.draw do
  resources :posts
  resources :jams
  devise_for :users, controllers: {
              registrations: 'users/registrations'
            }
  get 'home/index'
  root to: "home#index"
end
