Rails.application.routes.draw do
  root 'static_pages#home'
  resources :people do 
    resources :tasks 
  end 
end
