Rails.application.routes.draw do
  devise_for :users

  get 'article/:id', to: 'article#show', as: 'article_show'

  resources :articles do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'
  root 'pages#home'
  get 'pages/home'
end
