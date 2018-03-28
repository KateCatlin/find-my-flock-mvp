class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  attr_reader :current_user
  helper_method :current_user

  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
  end

  def current_user
    @current_user ||= current_registration.try(:user)
  end

  def after_sign_in_path_for(resource_or_scope)
   dashboard_index_path
 end

 def after_sign_up_path_for(resource)
    new_user_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:gets_mail])
  end
end
