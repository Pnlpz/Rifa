class ApplicationController < ActionController::Base
   check_authorization unless: :devise_controller?
   rescue_from CanCan::AccessDenied do |exception|
     respond_to do |format|
     format.html { redirect_to root_url, alert: exception.message }
   end
  end
end
