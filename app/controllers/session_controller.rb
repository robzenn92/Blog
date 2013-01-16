class SessionController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by_name(params[:name])
  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id
  		redirect_to user_path(@user), :notice => "You are logged in."
  	else
  		redirect_to login_path, :notice => "Invalid username or password combination."
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_path, :notice => "Logged out"
  end
end
