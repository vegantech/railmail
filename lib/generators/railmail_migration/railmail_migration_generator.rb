require 'rails/generators'
require 'rails/generators/migration'
require 'rails/generators/active_record/migration'

class RailmailMigrationGenerator < Rails::Generators::Base

  include Rails::Generators::Migration
  extend ActiveRecord::Generators::Migration

  source_root File.expand_path('../templates', __FILE__)

  desc 'Generates (but does not run) a migration to add a railmail_deliveries table.'

  def create_migration_file
    if defined?(ActiveRecord)
      migration_template 'migration.rb', 'db/migrate/create_railmail_deliveries.rb'
    end
  end

end
