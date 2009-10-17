require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "number_to_lcd"
    gem.summary = %Q{TODO: one-line summary of your gem}
    gem.description = %Q{TODO: longer description of your gem}
    gem.email = "coreyhaines@gmail.com"
    gem.homepage = "http://github.com/coreyhaines/number_to_lcd"
    gem.authors = ["Corey Haines"]
    gem.add_development_dependency "rspec"
    gem.add_development_dependency "cucumber"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:tests) do |t|
  t.test_files = FileList['test/*_test.rb']
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |t|
  t.libs << "test"
  t.rcov_opts = [
    '-xRakefile', 
    '-x/Library', 
    '--text-report',
    '--sort coverage'
  ]
  t.test_files = FileList['test/*_test.rb']
  t.output_dir = 'coverage'
end

begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)

  task :features => :check_dependencies
rescue LoadError
  task :features do
    abort "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
  end
end

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "number_to_lcd #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
