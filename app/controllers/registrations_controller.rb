class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to root_path, notice: 'User created successfully'
    else
      flash.now[:alert] = 'Invalid email or password. Password must be between 6 and 10 characters'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
