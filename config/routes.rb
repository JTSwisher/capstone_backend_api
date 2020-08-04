Rails.application.routes.draw do
  
  namespace :api do 
    resources :users, only: [:create] do 
      resources :todos, only: [:index, :create, :update, :delete]
    end 
  end 

end
