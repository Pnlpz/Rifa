class ApplicationController < ActionController::Base
  #  check_authorization unless: :devise_controller?
  #  rescue_from CanCan::AccessDenied do |exception|
  #    respond_to do |format|
  #    format.html { redirect_to root_url, alert: exception.message }
  #  end
  # end
  check_authorization :unless => :is_devise_or_active_admin?
  skip_authorization_check
  protected

  def is_devise_or_active_admin?
    devise_controller? || active_admin_resource?
  end

  def active_admin_resource?
    self.class.ancestors.include? ActiveAdmin::BaseController
  end

  private
  def do_not_check_authorization?
    respond_to?(:devise_controller?)
  end
end
