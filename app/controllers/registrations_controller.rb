class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path(resource)
    redirect_to new_user_path(resource)
  end
end
