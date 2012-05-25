require "railmail/part"

class RailmailDelivery < ActiveRecord::Base
  serialize :recipients
  serialize :from
  serialize :headers
  serialize :raw
  attr_accessible  :recipients, :from, :subject, :sent_at, :raw

  def new?
    read_at.nil?
  end
  
  def resend(new_recipients=[])
    # TODO: Not working.
    new_recipients = [new_recipients].compact.flatten
    self.raw.to = new_recipients unless new_recipients.empty?
    ActionMailer::Base.deliver(self.raw)
    save!
  end

  def body
    self.raw["@body"]
  end

  def multipart?
    self.body.multipart?
  end

  def parts
    self.body.parts.map { |x| Railmail::Part.new(x) }
  end
end

