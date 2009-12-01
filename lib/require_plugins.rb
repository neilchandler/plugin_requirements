# RequirePlugins
module Rails
  class Plugin
    MISSING_PLUGINS = []
    
    def self.required_plugins_errors
      if MISSING_PLUGINS.any?
        puts
        puts MISSING_PLUGINS
        puts
        exit(1)
      end
    end
    
    
    def require_plugins( *plugin_names )
      plugin_names.each do |plugin_name|
        plugin = File.join('vendor','plugins', plugin_name.to_s )
    
        unless File.exists?( plugin )
          MISSING_PLUGINS << "Required plugin missing: [#{self.name}] requires [#{plugin}]"
        end
      end
  
    end
  end
end