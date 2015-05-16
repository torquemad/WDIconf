class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def all
    @users = User.all
  end

  def new
    @user = User.new
    @access_level = AccessLevel.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_all_path
    else
      render :new
    end
  end

  def profile
    @user = User.find(params[:id])
  end

  def user_params

    # password=params["user"]["password"]
    # password_digest = BCrypt::Password.create(password)
    # #password: password_digest
    binding.pry
    params.require(:user).permit(:email, :access_level, :login_type)
  end

end
