# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
if Rails.env.development? or Rails.env.test?
  NSSYearbook::Application.config.secret_token = 'f3660494b429f080fe338f7d47519256fa2d505648f1e2fd30ccb70f7389391e48427d8b00a07eeac0d66400b3692c54c9ef973d10a1b41e163272b55de2f52d'
else
  NSSYearbook::Application.config.secret_token = ENV['SECRET_TOKEN']
end