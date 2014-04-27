MileageTracker::Application.routes.draw do
  resources :vehicles
  resources :mileages, only: [:index, :new, :create]

  root to: 'vehicles#index'
end

