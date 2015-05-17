class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:twitter]

  # oAuth user, now only works with Twitter
  def self.find_for_oauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.access_token = auth.credentials.token
      user.twitter_secret = auth.credentials.secret
      user.email = auth.extra.access_token.params[:user_id].to_s + "@twitter.com"
      # user.password = user.encrypted_password = Devise.friendly_token[0,20]
      user.password= Devise.friendly_token[0,20]
    end
  end
end
