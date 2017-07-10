class AuthController < ApplicationController
  def login
    redirect_to root_path if session[:user]
    respond_to do |format|
      format.html
    end
  end

  def dologin
    u = UserLogin.authenticate(params[:username], params[:password])
    if u.nil?
      flash[:notice] = 'Invalid username/password'
      redirect_to login_path
    end

    if u
      session[:user] = {id: u.id, image_url: u.image_url, email: u.email}
      redirect_to root_path
    end
  end

  def logout
    session[:user] = nil
    session[:thirdparty] = nil
    session.delete(:user)
    redirect_to root_path
  end
end
