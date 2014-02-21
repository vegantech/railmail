require 'will_paginate' 
require 'railmail/observer'
require 'sprockets/railtie'

module Railmail
  class Engine < Rails::Engine
    engine_name 'railmail'
    initializer :assets do |app|
      Rails.application.config.assets.precompile += %w(railmail.js)
    end


  end if defined?(Rails)
end

