Rails.application.routes.draw do
  namespace :api do
    resources :questions, only: %i[index show]
    resources :questions do
      resources :answers, only: [:index]
    end
  end
end
