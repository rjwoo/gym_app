Rails.application.routes.draw do

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  root "programs#index"

  resources :programs do
    resources :days
  end

  resources :days do
    resources :exercises
  end

  resources :exercises do
    resources :workout_logs
  end

end
