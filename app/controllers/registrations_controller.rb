class RegistrationsController < ApplicationController
  def new
    @user = User.new # How does this work?
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id #Do we need to use @ here??
      redirect_to root_path, notice: 'User created successfully'
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
