Rails.application.routes.draw do

  resources :lessons
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
  	confirmations: 'confirmations', registrations: 'registrations'
  }
	root 'pages#home'
  get 'pages/about'
  get 'pages/contact'
  get '/course/:id', to: 'lessons#create_course', as: 'course'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
