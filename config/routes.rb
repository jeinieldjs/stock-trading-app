Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  devise_scope :user do
    root to: "devise/sessions#new"
  end

  namespace :admin do
    resources :dashboard, only: [:index, :new, :create, :edit, :update]
  end

  namespace :trader do
    resources :dashboard, only: [:index, :show, :edit, :update]
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
