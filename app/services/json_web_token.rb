require "jwt"

class JsonWebToken
  SECRET_KEY = Rails.application.secret_key_base.to_s

  def self.encode(user_id)
    payload = { user_id: user_id, exp: 24.hours.from_now.to_i }
    JWT.encode(payload, SECRET_KEY)
  end
end
