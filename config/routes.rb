Rails.application.routes.draw do

  resources :histories
  resources :contracts
  resources :events
  resources :jokes
  resources :comedians

  scope module: :api do
    resources :managers
  end

  root "dashboards#index"
end
