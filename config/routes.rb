Rails.application.routes.draw do
  root to: "home#show"

  resources :users, only: [:new, :create]

  resources :ads, only: [:new, :create, :edit, :update]

  # login
  resources :sessions, only: [:new, :create] do
    collection do
      delete "sign_out", to: "sessions#destroy", as: "sign_out"
    end
  end
end
