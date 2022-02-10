class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    p params[:email]
    p user, "____________"
    p User.all
    # finds existing user, checks to see if user can be authenticated
    if user.present? && user.authenticate(params[:password])
      # sets up user.id sessions
      p 'HELLO from if'
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in successfully'
    else
      p "hello from else"
      flash.now[:alert] = 'Invalid email or password'
      render :new
    end
  end
  

  def destroy
    session[:user_id] = nil 
    redirect_to root_path, notice: 'Logged out successfully'
  end
end
