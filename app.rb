require "bundler/setup" if File.exist?("Gemfile")

Dir[File.join(__dir__, "lib", "*.rb")].each { |file| require file }
Dir[File.join(__dir__, "services", "*.rb")].each { |file| require file }
