Rails.application.routes.draw do
  devise_for :users
  root to: "homes#index"
  resources :plans
  get '/todo', to: 'plans#todo'
  get '/today_calendar/:date', to: 'plans#daily'
end
