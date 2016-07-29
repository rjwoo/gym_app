Rails.application.routes.draw do

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  root "home#index"

  resources :programs do
    resources :days
  end

  resources :days, only: [] do
    resources :exercises
  end

end
