class SessionController < ApplicationController

  def new
  end


  def create
    email = params[:session][:email]
    password = params[:session][:password]
    @user = User.find_by(email: email)
  end

  def destroy
    log_out
    redirect_to :root
  end
end
