# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
FeatureFlags::Application.config.secret_key_base = 'a46d3b5882cb5580d21884157b33300cfb1eca4ede9f9c4b262479f978e63011789354df68ae804e1300abc0ef2dfef5aee0d83d52ffe4ee8c0091b48cd27e21'
