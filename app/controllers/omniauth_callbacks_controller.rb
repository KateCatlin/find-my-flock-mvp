class OmniauthCallbacksController < Devise::OmniauthCallbacksController
 def linkedin
   auth = request.env["omniauth.auth"]
   @registration = Registration.connect_to_linkedin(request.env["omniauth.auth"],current_registration)
   if @registration.persisted?
     flash[:notice] = I18n.t "devise.omniauth_callbacks.success"
     sign_in_and_redirect @registration, :event => :authentication
   else
     session["devise.linkedin_uid"] = request.env["omniauth.auth"]
     redirect_to new_registration_registration_url
   end
 end

 protected

 def after_sign_up_path_for(resource)
  redirect_to new_user_path(@user)
end

def after_inactive_sign_up_path_for(resource)
  redirect_to root
end

end
