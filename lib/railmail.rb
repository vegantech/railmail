require 'will_paginate' 
require 'railmail/observer'
require 'railmail/action_mailer'

module Railmail
  class Engine < Rails::Engine
  end if defined?(Rails) && Rails::VERSION::MAJOR == 3
end

