class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user  

  private

    def current_user
      return nil if !session[:user]
      if session[:user]
        user = session[:user]
        id = (user && user['id']) ? user['id'] : nil
        if session[:thirdparty]
          @current_user ||= User.find_by(id: id)
        else
          @current_user ||= UserLogin.find_by(id: id)
        end
      end
    end

    def authenticate_user!
      Rails.logger.debug 'authenticate_user!: ' + current_user.inspect.to_s
      if current_user == nil
        redirect_to login_path
      end
    end

end
