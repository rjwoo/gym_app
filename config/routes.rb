Rails.application.routes.draw do

  resources :users, only: [:new, :create]

  root "home#index"

  resources :programs do
    resources :days
  end

  resources :days, only: [] do
    resources :exercises
  end

end
