class CreateRailmailDeliveries < ActiveRecord::Migration
  def self.up
    create_table :railmail_deliveries do |t|
      t.string   :recipients, :limit => 1.kilobyte
      t.string   :from,       :limit => 255
      t.string   :subject,    :limit => 1.kilobyte
      t.datetime :sent_at
      t.datetime :read_at
      t.string   :raw,        :limit => 10.megabytes
    end
  end

  def self.down
    drop_table :railmail_deliveries
  end
end
