class RegistrationsController < Devise::RegistrationsController

  def create
    super do
      User.create(registration_id: resource.id)
      binding.pry
    end
  end

  protected

  def after_sign_up_path_for(resource)
    edit_user_path(resource.user)
  end

end
