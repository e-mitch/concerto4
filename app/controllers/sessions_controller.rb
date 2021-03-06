class SessionsController < ApplicationController
  def new
  end

  def create
   @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/welcome/index'
   else
      redirect_to '/login'
   end
end

  def login
  end

  def welcome
  end
  
  def logout
    session[:user_id] = nil
    redirect_to '/welcome/index'
  end
end
