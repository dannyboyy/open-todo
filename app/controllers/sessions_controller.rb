class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate?(params[:password])
      session[:uid] = user.id
      render json: {success: true}
    else
      render json: {success: false}
    end
  end
end