class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_user


    def current_user
      @current_user = User.find_by(id: session[:user_id])
    end
  
    def require_login
      redirect_to '/login' if !current_user
    end

    def get_streaming_service_by_id
      @streaming_service = StreamingService.find_by(id: params[:streaming_service_id]) 
    end

    
end
