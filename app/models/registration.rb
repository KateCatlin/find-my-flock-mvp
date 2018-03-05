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
       registration = Registration.create(provider:auth.provider, uid:auth.uid, email:auth.info.email, password:Devise.friendly_token[0,20],
         )
     end
   end
 end

end
