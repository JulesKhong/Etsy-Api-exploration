class SessionsController < ApplicationController
  def create
    begin
      binding.pry
      @user = User.from_omniauth(request.env['omniauth.auth'])
      session[:user_id]= @user.id
      flash[:success] = "Welcome, #{@user.name}!"
    rescue
      flash[:warning] = "NOOOOOO!"
    end
    redirect_to root_path
  end
end
