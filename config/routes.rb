Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :exercise_routines, only: [:show, :destroy]
      resources :users
      resources :routines
      resources :exercises, only: [:show, :create, :destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
