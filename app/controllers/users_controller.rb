class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]

  def new
    if session[:user_id]
      redirect_to user_subscriptions_path(current_user)
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_subscriptions_path(@user)
    else
      render :new
    end
  end


  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
