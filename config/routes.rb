Rails.application.routes.draw do
  #devise_for :users
  root 'jobs#index'
  resources :jobs do
   member do
     post :accept
     post :reject
     post :apply_job
     post :hire
     post :fire

   end
 end
 

  devise_for :users, controllers: { registrations: 'registrations' }
  
end
