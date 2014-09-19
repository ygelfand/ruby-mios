require 'httpclient'
require 'json'
require 'mios/version'
require 'mios/interface'
require 'mios/device'
require 'mios/action'
require 'mios/job'
require 'mios/client'
require 'mios/category'
require 'mios/category_collection'
require 'mios/room'
require 'mios/type_conversion'
require 'mios/scene'
Dir[File.dirname(__FILE__) + '/mios/services/*.rb'].each {|file| require file }
