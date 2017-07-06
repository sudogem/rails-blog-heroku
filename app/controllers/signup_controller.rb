class SignupController < ApplicationController
  def index
    @userlogin = UserLogin.new
    respond_to do |format|
      format.html
    end
  end

  def save
    # @userlogin = UserLogin.create(email: params[:user_login][:email], password: params[:user_login][:password])
    @userlogin = UserLogin.create(signup_params)
    respond_to do |format|
      if @userlogin.save
        # format.html { redirect_to url_for(:action => "index", :controller => "welcome"), alert: 'Successfully saved.' }
        format.html { redirect_to signup_success_path and return }
      else
        format.html { render action: "index" }
      end
    end    
    # if !email.blank? && !password.blank?
      # UserLogin.create(:email => email, :password => password)
    #   @userlogin.email = email
    #   @userlogin.password = password
    #   @userlogin.save
    #   redirect_to signup_success_path and return
    # end    
  end

  def success
    respond_to do |format|
      format.html
    end
  end

  def register
    email = params[:email]
    password = params[:password]
    respond_to do |format|
      format.html
    end
  end

  private

    def signup_params
      params.require(:user_login).permit(:email, :name, :password, :password_confirmation)
    end
end
