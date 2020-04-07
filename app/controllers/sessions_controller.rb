class SessionsController < ApplicationController
  def new

  end

  def create
    # email addresses are saved as all lower-case, so here we use the downcase method
    user = User.find_by(email: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      render 'new'
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' 
      # write a test to catch repeated flash error 
      # rails generate integration_test users_login
      render 'new'
    end
  end

  def destroy

  end

end
