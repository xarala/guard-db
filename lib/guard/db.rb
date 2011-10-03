#require "db/version"

# encoding: utf-8
require 'guard'
require 'guard/guard'


module Guard
  
  class Db < Guard
    
    def initialize(watchers=[], options={} )
      super
    end
    
    def start
      true
    end
    
    def stop
      true
    end
    
    def reload
      true
    end
    
    def run_all
      true
    end
    
    def run_on_change(paths)
      true
    end

    # Called on file(s) deletions
    def run_on_deletion(paths)
      true
    end  
        
  end
  
end