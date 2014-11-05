class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  #before_action :authenticate

  def authenticate
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate?(params[:password])
      return @user
    else
      render json: {authentic: false}
    end
  end

end
