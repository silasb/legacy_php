require "rubygems"
require "bundler/setup"

require 'rack'
require 'rack/legacy/php'

SCRIPTS_DIR = File.join(ENV['HOME'], 'Sites')

app = Rack::Builder.app do
  use Rack::Legacy::Php, SCRIPTS_DIR

  run lambda { |env| [404, {'Content-Type' => 'text/html'}, ["Couldn't find script"]] }
end

run app
#Rack::Handler::WEBrick.run app, :Port => 4000
