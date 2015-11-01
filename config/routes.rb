Rails.application.routes.draw do
  root 'home#index'
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:index, :show] do
      resources :driving_stats, only: [:index]
      resources :earnings, only: [:index]
    end
  end
end
