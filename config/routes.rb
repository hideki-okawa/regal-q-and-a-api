Rails.application.routes.draw do
  namespace :api do
    resources :questions, only: %i[index show create]
    resources :questions do
      resources :answers, only: %i[index]
    end
  end
end
