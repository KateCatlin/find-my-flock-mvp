class Registration < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  has_one :user

  def self.connect_to_linkedin(auth, signed_in_resource=nil)
    registration = Registration.where(:provider => auth.provider, :uid => auth.uid).first
    if registration
     return registration
   else
     registered_registration = Registration.where(:email => auth.info.email).first
     if registered_registration
      return registered_registration
    else
      registration = Registration.create(provider:auth.provider, uid:auth.uid, email:auth.info.email, password:Devise.friendly_token[0,20])
      image_url = auth.extra.raw_info.pictureUrl rescue nil
      user = User.where(email: auth.info.email).first rescue nil
      if user
        user.update_attributes(image_url: image_url, linkedin_url: linkedin_url)
      else
        user = User.create(registration_id: registration.id, first_name: auth.info.first_name, last_name: auth.info.last_name, location: auth.info.location, photo: auth.info.image)
        user.save!
      end
      return registration
    end
  end
end
end
