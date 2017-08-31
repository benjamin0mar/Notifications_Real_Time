Rails.application.routes.draw do
  resources :comments
  root to: 'events#index'
  mount ActionCable.server => '/cable'
end
