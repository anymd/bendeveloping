class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:password] == ENV["BLOG_PASSWORD"]
      session[:password] = params[:password]
      flash[:notice] = "Successfully logged in"
      redirect_to root_path
    else
      flash[:error] = "Incorrect password"
      render "new"
    end
  end
  
  def destroy
    reset_session
    flash[:notice] = "Successfully logged out"
    redirect_to login_path
  end
end