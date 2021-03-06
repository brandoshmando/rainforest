class UsersController < ApplicationController
  before_action :ensure_logged_in, only: [:edit, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You successfully created a new user!"
      redirect_to root_path
    else
      flash.now[:fail] = "New user was not created"
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    session[:user_id] = nil
    @user.destroy
    redirect_to users_path
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :password, :email)
    end
end
