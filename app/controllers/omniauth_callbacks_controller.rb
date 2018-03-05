class OmniauthCallbacksController < Devise::OmniauthCallbacksController
 def linkedin
   auth = request.env["omniauth.auth"]
   @registration = Registration.connect_to_linkedin(request.env["omniauth.auth"],current_registration)
   if @registration.persisted?
     flash[:notice] = I18n.t "devise.omniauth_callbacks.success"
     sign_in_and_redirect @registration, :event => :authentication
   else
     session["devise.linkedin_uid"] = request.env["omniauth.auth"]
     redirect_to new_user_path(@user)
   end
 end
end
