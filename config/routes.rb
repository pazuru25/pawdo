Rails.application.routes.draw do
  get 'plan_saves/index'
  devise_for :users
  root to: "homes#index"
  resources :plans
end
