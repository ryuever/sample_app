class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Sign the user in and redirect to the user's show page.
    else
      #flash[:error] = 'Invalid email/password combination' # Not quite right!
      flash.now[:error] = 'Invalid email/password combination'
      render 'new' # done nothing, but render the new view.
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
