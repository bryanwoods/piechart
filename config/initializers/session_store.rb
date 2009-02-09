# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_piechart_session',
  :secret      => '3d11706f79032645e9ee0c08bb6c395590e9647f5b35e47ae2e3346296ea16d11e1e784a910c1bc6f689fd8bece80d7373452b22c76bc7432141b62697713651'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
