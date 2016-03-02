class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    helper_method :current_user, :logged_in?, :authorize

    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
      !current_user.nil?
    end

    def authorize
      unless logged_in?
        redirect_to new_session_path
    end

    def is_current_user?

    end
  end
end
