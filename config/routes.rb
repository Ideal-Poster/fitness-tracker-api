Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :routines
      resources :routine_exercises
      get 'exercises_for_routine/:id/', to: 'routines#routine_exercises'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
