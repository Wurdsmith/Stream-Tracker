class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_user

    #These helper methods are used by other controllers, so should live in the ApplicationController.
    def current_user
      @current_user = User.find_by(id: session[:user_id])
    end
  
    def require_login
      redirect_to '/login' if !current_user
    end

end
