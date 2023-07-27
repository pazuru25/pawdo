Rails.application.routes.draw do
  devise_for :users
  root to: "homes#index"
  resources :plans
  get '/todo', to: 'plans#todo'
  get '/audio/Countdown03-1.mp3', to: 'audio#countdown_sound', format: 'mp3'
  get '/today_calendar/:date', to: 'plans#daily'
end
