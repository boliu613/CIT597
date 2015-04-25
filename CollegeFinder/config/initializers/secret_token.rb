# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
CollegeFinder::Application.config.secret_token = ENV["SECRET_TOKEN"] || '6cd77910968b0182b9fe810c576941b27e1ecbdae682d486766479dda50cb3e7b79aa2ed42928f9a64b731401dfb1401347ac125403c8d4006169eee8379edad'
