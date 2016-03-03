# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
require 'resque/server'
require 'resque_scheduler'
require 'resque/status_server'

# Set the AUTH env variable to your basic auth password to protect Resque.
AUTH_USER = "reclipit"
AUTH_PASSWORD = "miami"
if true
  Resque::Server.use Rack::Auth::Basic do |username, password|
    password == AUTH_PASSWORD && username == AUTH_USER
  end
end
use Rack::Deflater
run ReclipIt::Application
