class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private


  def user_params
    params.require(:user).permit(:email,
                                 :password,
                                 :password_confirmation,
                                 :remember_me)
  end

  def authorize
    redirect_to root_path, alert: "Please sign in to send a message." if current_user.nil?
  end

end




