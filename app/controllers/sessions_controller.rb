class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :back, notice: "Account successfully authenticated"
    else
      render "new", notice: "Email and password combination is invalid"
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

end
