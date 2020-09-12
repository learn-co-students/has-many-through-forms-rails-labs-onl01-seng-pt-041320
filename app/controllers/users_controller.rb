class UsersController < ApplicationController

  def new
    User.new
  end

  def create
    User.create(user_params)
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

end
