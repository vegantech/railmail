module Railmail
  class Observer
    def self.delivered_email(mail)
      ::RailmailDelivery.create!(:recipients => mail.to.to_a,
                                 :from       => mail.from.to_a,
                                 :subject    => mail.subject,
                                 :sent_at    => Time.now,
                                 :raw        => mail)
    end
  end
end

