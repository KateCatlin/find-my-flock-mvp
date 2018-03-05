class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  attr_reader :current_user
  helper_method :current_user

  def current_user
    @current_user ||= current_registration.try(:user)
  end

  def after_sign_in_path_for(resource_or_scope)
   dashboard_index_path
 end

 def after_sign_up_path_for(resource)
  new_user_path
end
end
