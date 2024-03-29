Devise.setup do |config|
  config.mailer = 'Users::Mailer' 
  config.mailer_sender = ENV['GOOGLE_EMAIL']
  config.confirm_within = 1.days
  require 'devise/orm/active_record'

  config.reset_password_keys = [:email]
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.scoped_views = true
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 12
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.sign_in_after_reset_password = true
  config.reset_password_within = 6.hours
  config.sign_out_via = :get
end
