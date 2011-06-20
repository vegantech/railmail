module Railmail
  class Observer
    def self.delivered_email(mail)
      RailmailDelivery.create!(:recipients => mail.to,
                               :from       => mail.from,
                               :subject    => mail.subject,
                               :sent_at    => Time.now,
                               :raw        => mail)
    end
  end
end

