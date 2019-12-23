class UsersController < ApplicationController
  def new
  end

  def create
    new_user = User.new(user_params)
    if new_user.save
      flash[:success] = "Welcome, #{new_user.username}."
      session[:user_id] = new_user.id
      redirect_to "/profile"
    else
      flash[:error] = new_user.errors.full_messages.to_sentence
      redirect_to "/register"
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  private
    def user_params
      params.permit(
        :username,
        :first_name,
        :last_name,
        :street_address,
        :city,
        :state,
        :zip,
        :email,
        :password,
        :role
      )
    end
end