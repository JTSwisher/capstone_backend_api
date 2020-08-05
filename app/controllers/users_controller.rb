class UsersController < ApplicationController
    
    def create()
        if  user = User.find_by(username: params["user"]["username"]) 
           if user.authenticate(params["user"][:password])
            render json: user, only: [:username, :email, :token]
           else
            render json: {errors: 'Error signing in, please try again.'}
           end 
        else #create new user if existing user not found
            user = User.new(user_params)
            if user.save
                render json: user, only: [:username, :email, :token]
            else 
                render json: {errors: 'Error signing up, please try again.'}
            end 
        end 
    end 

    private 

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end


end 