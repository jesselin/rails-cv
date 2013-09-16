class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@users = User.new
  end

  def create

    # @user = User.new(first_name: params[:user][:first_name], last_name: params[:user][:last_name], email_address: params[:user][:email_address], password: params[:user][:password])
    @user = User.new(user_params)
    if @user.save 
      redirect_to @user, notice: 'User was successfully created.'
    else
      render action: 'new'
    end

  end
  
  def show
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit([:first_name, :last_name, :email_address, :password])
    end

end
