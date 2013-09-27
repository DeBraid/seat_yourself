class UsersController < ApplicationController
  def index
    @users=User.all
  end

  def new
    @user = User.new
  end

<<<<<<< HEAD
	def create
  	@user = User.create(user_params)

  	if @user.save
  		redirect_to @user
  	else
  		render "new"
  	end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

  private 
=======
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

>>>>>>> 74039c72f6a19f7261bc706af67ea3f42a2ac45f
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :full_name)
  end

end
