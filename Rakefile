$:.push File.join(File.dirname(__FILE__), 'lib/vht')

require 'rubygems'
require 'bundler/gem_tasks'
require 'rspec'
require 'rspec/core/rake_task'
require 'cucumber'
require 'cucumber/rake/task'
require 'standalone_migrations'

require 'empty_gem'

Bundler::GemHelper.install_tasks
StandaloneMigrations::Tasks.load_tasks
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '-fd --color'
end
Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = 'features --format pretty'
end

$:.unshift 'tasks'
Dir.glob('tasks/**/*.rake').each do|rakefile|
  load rakefile
end

#task :default => [:default_task]
