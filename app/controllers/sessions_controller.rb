class SessionsController < ApplicationController
  before_action :require_login, only: [:index, :destroy]
  
  def index
  end
  
  def new
    redirect_to home_path if logged_in?
  end
  
  def create
    if !!params[:name] && !params[:name].strip.empty?
      session[:name] = params[:name]
    end
    redirect_to home_path
  end
  
  def destroy
    session.delete(:name)
    redirect_to login_path
  end
  
  private
  
  def require_login
    return redirect_to login_path unless logged_in?
  end
end
