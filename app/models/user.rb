class User < ApplicationRecord
  def self.from_omniauth(auth)
    where(uid: auth.uid).first_or_create do |user|
      user.uid = auth.uid
      user.avatar_url = auth.extra.raw_info.avatar_url
      user.username = auth.extra.raw_info.login
      user.name = auth.extra.raw_info.name
      user.oauth_token = auth.credentials.token
    end
  end
end
