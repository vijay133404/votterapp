Rails.application.routes.draw do
  resources :candidates
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :votes, only:[:new,:show,:index,:create]
root'votes#index'
end
