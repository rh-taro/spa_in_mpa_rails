Rails.application.routes.draw do
  root 'home#index'
  resources :spa, only: [:index]
end
