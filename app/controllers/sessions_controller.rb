class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(username: params[:session][:username])
    if user
      # Log the user in and redirect to the user's show page.
      @login
      redirect_to user, notice: "You're logged in!!!"
    else
      # Create an error message.
      render 'new'
    end
  end
end
