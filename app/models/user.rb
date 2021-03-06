class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:google_oauth2]

  # def self.from_omniauth(auth)
  #   # Either create a User record or update it based on the provider (Google) and the UID   
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.token = auth.credentials.token
  #     user.expires = auth.credentials.expires
  #     user.expires_at = auth.credentials.expires_at
  #     user.refresh_token = auth.credentials.refresh_token
  #   end
  # end


  def self.from_omniauth(auth)
    user = User.find_by(email: auth.info.email)
    if user
      user.provider = auth.provider
      user.uid = auth.uid
      return user
    end
  
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.skip_confirmation! 
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
    end
  end





end