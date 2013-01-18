require 'rspec'
require 'debugger'

require 'empty_gem'

# import all the support files
Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |f| require File.expand_path(f) }

RSpec.configure do |config|

  config.before(:all) do
  end

end
