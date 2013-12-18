require 'will_paginate' 
require 'railmail/observer'

module Railmail
  class Engine < Rails::Engine
  end if defined?(Rails)
end

