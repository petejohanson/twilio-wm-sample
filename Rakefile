
begin
  require 'cucumber'
  require 'cucumber/rake/task'

  $: << File.expand_path(File.dirname(__FILE__))
  $: << File.expand_path("lib", File.dirname(__FILE__))

  Cucumber::Rake::Task.new(:features) do |t|
    t.fork = false
    t.cucumber_opts = 'features --format pretty'
  end
rescue LoadError
  desc 'Cucumber rake task not available'
  task :features do 
    abort 'Cucumber rake task not available. Be sure to install the cucumber gem'
  end
end
