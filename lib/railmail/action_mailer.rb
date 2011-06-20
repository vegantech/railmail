module Railmail
  module ActionMailer
  
    module InstanceMethods
      @@railmail_settings = {}
      mattr_accessor :railmail_settings
    end
  end
end



