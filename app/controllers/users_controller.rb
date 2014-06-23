class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You successfully created a new user!"
    else
      flash.now[:fail] = "New user was not created"
      render 'new'
    end
  end

  def show
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :password, :email)
    end
end
