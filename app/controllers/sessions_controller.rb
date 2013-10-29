class SessionsController < ApplicationController
  def new
  end

  def create
    session[:password] = params[:password]
    flash[:notice] = &rsquo;Successfully logged in&rsquo;
    redirect_to home_path
  end
  
  def destroy
    reset_session
    flash[:notice] = &rsquo;Successfully logged out&rsquo;
    redirect_to login_path
  end
end