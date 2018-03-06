Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :registrations, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  root to: 'pages#home'

  resources :users do
    get 'edit_skills', on: :member
    post 'edit_skills_return', on: :member
  end

  resources :jobs, only: [:show] do
    resources :favorites, only: [:create, :destroy]
    resources :applications, only: [:create, :destroy]
  end

  resources :favorites, only: [:destroy]

  resources :applications, only: [:update] do
    member do
      patch 'rejected'
      patch 'in_progress'
      patch 'matched'
    end
  end

  resources :dashboard, only: [:index]

end

