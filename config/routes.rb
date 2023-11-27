Rails.application.routes.draw do
  resources :course_details
  resources :courses
  resources :skill_details
  resources :skills
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :home
  

  devise_for :users 
  #devise_scope :users do
  #  get '/sign_out', to: 'devise/sessions#destroy', as: :sign_out
  #end


  # Defines the root path route ("/")
  root "home#index"
end
