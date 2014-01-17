class UsersController < ApplicationController

  before_filter :authenticate_user!

  def show
  	@user = current_user
  end


private

  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
