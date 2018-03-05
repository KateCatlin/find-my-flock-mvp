class RegistrationsController < Devise::RegistrationsController
 protected

 def after_sign_up_path_for(resource)
  new_user_path(@user)
end

def after_sign_in_path_for(resource_or_scope)
  raise
end

def after_inactive_sign_up_path_for(resource)
  redirect_to root
end

end
