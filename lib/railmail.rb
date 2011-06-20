require 'will_paginate' 
require 'railmail/observer'

module Railmail
  class Engine < Rails::Engine
  end if defined?(Rails) && Rails::VERSION::MAJOR == 3
end

