Rails.application.routes.draw do
  devise_for :users
  resources :articles do
    resources :comments
  end

  resources :articles do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'
  root 'pages#home'
  get 'pages/home'

end
