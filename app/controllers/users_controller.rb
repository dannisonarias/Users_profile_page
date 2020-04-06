class UsersController < ApplicationController
  def index
  end
  def show
    @user = User.find(params[:id])
    # We can treat this like a Rails console, issuing commands 
    # to figure out the state of the application
    # debugger
  end
  def new
    @user = User.new()
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User created success!"
      # redirects to /users/id
      # could be written as user_url(@user)
      redirect_to @user
    else
      flash[:error] = "User can't be saved"
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username,:email,:password)
  end

end
