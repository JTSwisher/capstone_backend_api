Rails.application.routes.draw do
    resources :users, only: [:create] do 
      resources :todos, only: [:index, :create, :update, :destroy]
    end 

end
