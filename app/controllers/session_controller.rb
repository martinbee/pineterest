class SessionController < ApplicationController

  def new
  end


  def create
    email = params[:session][:email]
    password = params[:session][:password]

    @user = User.find_by(email: email)
    if (@user) && (@user.authenticate password)
      log_in(@user)
      redirect_to :root, notice: "Welcome back, #{@user.username}!"
    else
      flash.now[:alert] = "❌ Invalid Email or Password"
      render :new
    end
  end

  def destroy
    log_out
    redirect_to :root, notice: 'You have signed out successfully!'
  end
end
