class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user != nil && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome, #{user.username}."
      redirect_to "/profile"
    else
      flash[:error] = "Incorrect Username or Password."
      render :new
    end
  end
end