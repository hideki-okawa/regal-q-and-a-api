Rails.application.routes.draw do
  namespace :api do
    resources :questions, only: %i[index show]
  end
end
