Rails.application.routes.draw do
  resources :historicals
  resources :contracts
  resources :events
  resources :comedians

  scope module: :api do
    resources :managers
  end

  root "dashboards#index"
end
