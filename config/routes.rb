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
  get 'pages/cfg', as: "cfg"
  get 'pages/contact', as: "contact"
  get "pages/appointment", as: "appointment"
  get "pages/blog", as: "blog"
  get '/course/:id', to: 'lessons#create_course', as: 'course'
  resources :messages
  resources :presentations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
