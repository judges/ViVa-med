# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ViVa-med_session',
  :secret      => 'df982b0457a75308bca2ea0a11ba40a5ed046b07597929a0aaeb05eb8cec69c3673ad4415aeccea03f2c3c825b1542cf007c4707f2b4098e4ba5d914cec22755'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
