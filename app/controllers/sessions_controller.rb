class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      flash[:success] = "Welcome to Audovare!"

      redirect_to root_path
    else
      flash.now[:warning] = "Your username, password or email does not match!"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Good bye"
    redirect_to root_path
  end
end
