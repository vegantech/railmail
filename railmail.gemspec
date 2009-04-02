# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{railmail}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Scott Fleckenstein"]
  s.date = %q{2009-04-02}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["README.rdoc", "VERSION.yml", "generators/railmail_migration", "generators/railmail_migration/railmail_migration_generator.rb", "generators/railmail_migration/templates", "generators/railmail_migration/templates/migration.rb", "generators/railmail_migration/USAGE", "lib/railmail", "lib/railmail/action_mailer.rb", "lib/railmail.rb", "test/railmail_test.rb", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/jqr/railmail}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Railmail allows email to be delivered and inspected in development mode without the use of a mail server.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
