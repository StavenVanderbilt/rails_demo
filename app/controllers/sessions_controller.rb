class SessionsController < ApplicationController

  include SessionsHelper

  def new
  end

  def create
    name = session_params[:name]
    password = session_params[:password]
    user = User.find_by_name(name)
    if user && user.authenticate(password)
      log_in(user)  # one method in the SessionsHelper class
      session_params[:remember_me] == '1' ? remember(user) : forget(user)
      # redirect_to user_path(user)
      render plain: sprintf("Welcome, %s!", user.name)
    else
      flash.now[:login_error] = "Invalid user name or password"
      render 'new'
    end
  end

  private
  def session_params
    params.require(:session).permit(:name, :password, :remember_me)
  end

  def destroy
    log_out if logged_in?  # one method in the SessionHelper class
    redirect_to root_path
  end
end
