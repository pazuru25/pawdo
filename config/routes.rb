Rails.application.routes.draw do
  devise_for :users
  root to: "homes#index"
  resources :plans
  get '/todo', to: 'plans#todo'
end
