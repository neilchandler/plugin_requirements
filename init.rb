# Include hook code here
require 'plugin_requirements'

config.after_initialize {
  Rails::Plugin.requirement_errors
}