Rails.application.routes.draw do
  namespace :api do
    resources :memes, defaults: { format: :json }
  end

  root to: 'pages#landing'
end
