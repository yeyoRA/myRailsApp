class UsersController < ApplicationController

    def new
        @user = User.new
    end


    def create
        #create a new user from the info 
        @user = User.new(user_params)
        
        if @user.save
            render "userCreated"
        else
            render "userNotCreated"
        end
    end


    def userCreated
    end
    def userNotCreated
    end

    def login
        #check in model if user exists..
        
        @user = User.find_by(userName: params[:user][:userName], password: params[:user][:password])
        
        


        if @user.nil?
            render "welcome/index"
        else
            redirect_to "/recipes/index"
        end
        


    end

    private
        def user_params
            params.permit(:firstName, :lastName, :address, :userName, :password)
        end

end
