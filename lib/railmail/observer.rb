module Railmail
  class Observer
    def self.delivered_email(mail)
      ::RailmailDelivery.create!(:recipients => mail.to.to_a,
                                 :from       => mail.from.to_a,
                                 :subject    => mail.subject,
                                 :sent_at    => Time.now,
                                 :raw        => self.convert_to_hash(mail))
    end

    private

    # NOTE: This is copied from newer mail gem's lib/mail/message.rb.
    def self.convert_to_hash(mail)
      hash = {}
      hash['headers'] = {}
      mail.header.fields.each do |field|
        hash['headers'][field.name] = field.value
      end
      hash['delivery_handler'] = mail.delivery_handler.to_s if mail.delivery_handler
      hash['transport_encoding'] = mail.transport_encoding.to_s
      special_variables = [:@header, :@delivery_handler, :@transport_encoding]
      (mail.instance_variables.map(&:to_sym) - special_variables).each do |var|
        hash[var.to_s] = mail.instance_variable_get(var)
      end
      hash
    end
  end
end

