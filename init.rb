# Include hook code here
require 'plugin_requiements'

config.after_initialize {
  Rails::Plugin.requirement_errors
}