Rails.application.routes.draw do
  resources :registrations
  root "events#index"
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    :omniauth_callbacks => "users/omniauth_callbacks"
  }
   resources :events do 
    resources :registrations
  end
end
