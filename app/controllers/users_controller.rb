class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new params.require(:user).permit(:username, :email, :password, :password_confirmation)
    if @user.save
      log_in(@user)
      redirect_to :root, notice: "Welcome to Pineterest, #{@user.username}!"
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def delete
  end

end
