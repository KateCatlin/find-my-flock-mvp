Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :registrations

  root to: 'pages#home'

  resources :users do
    get 'edit_skills', on: :member
    post 'edit_skills_return', on: :member
  end

  resources :jobs, only: [:show] do
    resources :favorites, only: [:create]
    resources :applications, only: [:create]
  end

  resources :favorites, only: [:destroy]

  resources :applications, only: [:update, :destroy] do
    member do
      patch 'rejected'
      patch 'in_progress'
      patch 'matched'
    end
  end

  resources :dashboard, only: [:index]

end

