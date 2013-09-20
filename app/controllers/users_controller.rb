class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def restaurant_params
    params.require(:restaurant).permit(:email, :password, :password_confirmation, :full_name)
  end
end
