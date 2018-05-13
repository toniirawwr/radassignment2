class SessionsController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            sign_in user
            flash[:success] = "Successful login!"
            redirect_to root_path
        else
            flash.now[:error] = "Invalid username/password. Usernames must be lowercase. Passwords must have at least one uppercase letter, one special character, one number and one lowercase letter! "
            render :new
        end
        
    end
    
    def destroy
        sign_out if signed_in?
        redirect_to root_path
    end
end
