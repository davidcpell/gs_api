Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create] do 
      resources :played_games, only: [:create, :index]
    end
    resources :games, only: [:create]
    resources :levels, only: [:create]
  end
end
