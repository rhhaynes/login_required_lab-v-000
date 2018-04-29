class SecretsController < ApplicationController
  before_action :require_login
  
  def show
  end
  
  private
  
  def require_login
    return redirect_to login_path unless logged_in?
  end
end
