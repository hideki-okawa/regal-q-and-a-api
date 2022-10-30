Rails.application.routes.draw do
  namespace :api do
    resources :questions, only: %i[index show create]
    resources :questions do
      resources :answers, only: %i[index]
    end

    mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      registrations: 'api/auth/registrations'
    }

    namespace :auth do
      resources :sessions, only: %i[index]
    end
  end
end
