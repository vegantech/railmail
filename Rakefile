require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the railmail plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the railmail plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Railmail'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "railmail"
    s.summary = "Railmail allows email to be delivered and inspected in development mode without the use of a mail server."
    # s.email = ""
    s.homepage = "http://nullstyle.com/railmail/"
    s.description = "When Railmail is enabled, any mail sent by your application will be trapped and stored in a database table. An interface is enabled within your application where you can view these emails. With railmail there is no need to set up testing email accounts while developing your application; just send out mail to any address and Railmail will capture it."
    s.authors = ["Scott Fleckenstein"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
