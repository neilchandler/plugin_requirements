# Include hook code here
require 'require_plugins'

config.after_initialize {
  Rails::Plugin.required_plugins_errors
}