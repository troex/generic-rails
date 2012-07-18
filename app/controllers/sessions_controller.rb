class SessionsController < ApplicationController

  def new
    return redirect_back_or_to root_url, :alert => 'You are already logged in' if current_user
  end

  def create
    return redirect_back_or_to root_url, :alert => 'You must be logged out' if current_user

    user = login(params[:email], params[:password], params[:remember_me])
    if user
      redirect_back_or_to root_url, :notice => 'Logged in'
    else
      flash.now[:alert] = 'Email or password invalid'
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => 'Logged out'
  end
end
