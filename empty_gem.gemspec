# -*- encoding: utf-8 -*-
$:.push File.join(File.dirname(__FILE__), 'lib')

require 'empty_gem/version'

Gem::Specification.new do |s|
  s.name        = 'empty_gem'
  s.version     = Vht::EmptyGem::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Jeremy Cron']
  s.email       = ['jeremykentc@gmail.com']
  s.homepage    = 'https://github.com/jcron/empty_gem'
  s.summary     = %q{empty_gem example}
  s.description = %q{empty_gem example}

  s.files         = Dir['Rakefile', 'README*', 'LICENSE*']
  s.files        += Dir['{bin,features,lib,spec}/**/*']
  s.test_files    = Dir['{spec,features}/**/*']
  s.bindir        = 'bin'
  s.executables   = Dir.glob('bin/*').map { |f| File.basename(f) }
  s.require_paths = ['lib', 'lib/empty_gem']

  s.default_executable = 'empty_gem'

  # Production dependencies

  #s.add_dependency 'activesupport', '~> 3.2.0'

  # Development dependencies
  
  s.add_development_dependency 'bundler'

  s.add_development_dependency 'debugger'
  s.add_development_dependency 'rake'

  s.add_development_dependency 'rspec'

  s.add_development_dependency 'cucumber'

end
