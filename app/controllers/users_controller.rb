class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
    @lists = @user.lists
    
    render json: @user
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      render json: @user, status: 201
    else
      render action: 'new'
    end
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
