ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do
  set :database, 'sqlite3:db/database.db'
end

# Sets up a connection to a sqlite3 database named "database.db", located in a
# folder called "db." If we wanted our .db file to be called dogs.db, we
# could simply change the name of this file

require './app'
