class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def user_admin
    if current_user
      if current_user.admin === true
        @user_admin = current_user
      end
    end
  end

  helper_method :user_admin
end
