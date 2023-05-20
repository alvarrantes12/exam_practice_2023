Rails.application.routes.draw do
  resources :comedians
  resources :histories
  resources :contracts
  resources :events

  scope module: :api do
    resources :managers
  end

  root "dashboards#index"
end

