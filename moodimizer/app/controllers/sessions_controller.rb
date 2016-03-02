class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by({username: params[:username]})
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:success] = "Welcome! Thanks #{@user.username} for logging in!"
      redirect_to user_path(@user)
    else
      flash[:failure] = "Oops, something went wrong. Try again."
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
