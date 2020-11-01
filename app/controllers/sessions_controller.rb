class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(username: params[:session][:username])
    if user
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to user, notice: "You're logged in!!!"
    else
      # Create an error message.
      flash[:danger] = 'Not found'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
