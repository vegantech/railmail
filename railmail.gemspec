# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "railmail/version"

Gem::Specification.new do |s|
  s.name        = "railmail"
  s.version     = Railmail::VERSION.dup
  s.platform    = Gem::Platform::RUBY  
  s.summary     = "Railmail allows email to be delivered and inspected in development mode without the use of a mail server"
  s.email       = "zonecheung@gmail.com"
  s.homepage    = "http://github.com/zonecheung/railmail"
  s.description = "Railmail allows email to be delivered and inspected in development mode without the use of a mail server"
  s.authors     = ['John Tjanaka']

  s.rubyforge_project = "railmail"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("rails", "~> 3.0.0")
  s.add_dependency("will_paginate", "~> 3.0.pre2")
end
