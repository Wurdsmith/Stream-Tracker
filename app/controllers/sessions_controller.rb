class SessionsController < ApplicationController

  def new
    @errors = []
  end

  def create
    binding.pry
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_subscriptions_path(@user)
    elsif @user
      @errors = ["Invalid Password"]
      render :new
    else
      @errors = ["Invalid Username"]
      render :new
    end
  end


  def create_with_google
    user = User.find_or_create_by(username: google_auth['info']['email']) do |u|
      u.password = SecureRandom.base64(15) #This generates a secure password for Google users. One that they likely won't be using manually to log into their account.
    end
    if user.save
      session[:user_id] = user.id
      redirect_to user_subscriptions_path(user)
    else
      redirect_to signup_path
    end
  end

  def destroy
    session.clear
    redirect_to '/signup'
  end

  private

  def google_auth
     self.request.env['omniauth.auth']
  end


end