Rails.application.routes.draw do

  resources :lessons
  resources :questionaires
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
  	confirmations: 'confirmations', registrations: 'registrations'
  }
	root 'pages#home'
  get 'pages/about', as: "about"
  get 'pages/lifestyle', as: "lifestyle"
  get 'pages/contact'
  get '/course/:id', to: 'lessons#create_course', as: 'course'
  resources :messages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
