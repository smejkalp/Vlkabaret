# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_vlkabaret_session',
  :secret      => '34b7e9bbf96d8f777668b1901b2d43c8dffbf5508d19ec8c3f62ed00de3cb7a6f745c11c16adee59b7d258f9b5160d1be8d5afbf45bcb711efa42e88fe19d883'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
