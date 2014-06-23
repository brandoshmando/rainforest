class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new()
  end

  def end
  end

  private

    def user_params
      params.require(:users).permit(:first_name, :last_name, :password, :email)
    end
end
