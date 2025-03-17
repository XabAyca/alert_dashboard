require "bundler/setup" if File.exist?("Gemfile")
require "dotenv/load"

Dir["./config/**/*.rb"].each { |file| require file }
Dir["./services/**/*.rb"].each { |file| require file }
Dir["./utils/**/*.rb"].each { |file| require file }
