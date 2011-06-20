namespace :railmail do
  desc "Add the Database Tables needed for RailMail"
  task :install => [:environment] do
    ActiveRecord::Schema.define do
      create_table :railmail_deliveries do |t|
        t.column "recipients", :string, :limit => 1.kilobyte
        t.column "from", :string, :limit => 255
        t.column "subject", :string, :limit => 1.kilobyte
        t.column "sent_at", :datetime
        t.column "read_at", :datetime
        t.column "raw", :string, :limit => 10.megabytes
      end
    end
  end
  
  task :uninstall => [:environment] do
    ActiveRecord::Schema.define do
      drop_table :railmail_deliveries
    end
  end
  
  task :reinstall => [:uninstall, :install]
  
  task :clear => :environment do
    RailmailDelivery.delete_all
  end
end
