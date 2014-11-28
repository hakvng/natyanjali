class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      if user.verified?
        sign_in user
        redirect_back_or user
      else
        flash.now[:error] = "Verification pending. You will recieve a notification via email after verification!"
        render 'static_pages/home' 
      end
    else
      flash.now[:error] = "Invalid email/password"
      render 'static_pages/home' 
    end
  end
  def destroy
    sign_out if signed_in?
    redirect_to root_url
  end
end
