require 'simplecov'
SimpleCov.start if ENV["COVERAGE"] == "enable"

Dir[File.join("#{File.expand_path(File.dirname(__FILE__))}","..", "lib", "*.rb")].map {|f| require f}
RSpec.configure do |config|

end