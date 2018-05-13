class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      sign_in @user
      flash[:success] = "Successful login!"
      redirect_to root_path
    else 
      flash[:error] = @user.errors.full_messages
      redirect_to login_path
    end
  end
  
  def show
    
  end
  
  private 
  def user_params
    params.require(:user).permit(:username, :password)
  end
  
end
