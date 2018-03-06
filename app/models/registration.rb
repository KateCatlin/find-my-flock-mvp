class Registration < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  has_one :user

  def self.connect_to_linkedin(auth, signed_in_resource=nil)
    registration = Registration.find_by(:provider => auth.provider, :uid => auth.uid)
    registration ||= Registration.find_by(:email => auth.info.email)

    if registration.nil?
      registration = Registration.create(provider:auth.provider, uid:auth.uid, email:auth.info.email, password:Devise.friendly_token[0,20])
    end
    image_url = auth.extra.raw_info.pictureUrl rescue nil
    if user = registration.try(:user)
      user.remote_photo_url = image_url
      user.save
    else
      user = User.create(registration_id: registration.id, first_name: auth.info.first_name, last_name: auth.info.last_name, location: auth.info.location)
      user.remote_photo_url = image_url
      user.save
    end
    return registration
  end
end
