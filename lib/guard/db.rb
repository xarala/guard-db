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
      UI.info "Guard::Db is watching changes in the database schema"
      started_at = Time.now
      @result = system("bundle exec rake db:test:clone")
      #Notifier::notify( @result, Time.now - started_at ) if notify?
      
      @result
    end
        
  end
  
end
