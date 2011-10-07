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
      run_db_test_clone
    end
    
    def stop
      true
    end
    
    def reload
      run_db_test_clone
    end
    
    def run_all
      run_db_test_clone
    end
    
    def run_on_change(paths)
      run_db_test_clone
    end

    # Called on file(s) deletions
    def run_on_deletion(paths)
      true
    end  
    
    
    private

    def run_db_test_clone
      UI.info "Guard::Db is running rake db:test:clone"
      started_at = Time.now
      @result = system("bundle exec rake db:test:clone")
      #::Guard::Notifier.notify( @result, :title => 'Cloned current schema in test db' ) #if notify?      
      UI.info "rake db:test:clone ended  #{Time.now - started_at} seconds"
      @result
    end
        
  end
  
end
