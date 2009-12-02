# PluginRequirements
module Rails
  class Plugin
    MISSING_REQUIREMENTS = []
    
    def self.requirement_errors
      if MISSING_REQUIREMENTS.any?
        puts
        puts MISSING_REQUIREMENTS
        puts
        exit(1)
      end
    end
    
    
    def requirements( *resource_names )
      resource_names.each do |resource_name|
        plugin = File.join('vendor','plugins', resource_name.to_s )
    
        unless File.exists?( plugin )
          MISSING_REQUIREMENTS << "Required plugin missing: [#{self.name}] requires [#{plugin}]"
        end
      end
  
    end
  end
end