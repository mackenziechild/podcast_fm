Rails.application.routes.draw do

  devise_for :podcasts
  root 'welcome#index'

  resources :podcasts, only: [:index, :show]
end
