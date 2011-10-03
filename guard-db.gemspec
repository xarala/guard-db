# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard/db/version"

Gem::Specification.new do |s|
  s.name        = "guard-db"
  s.version     = Guard::Db::VERSION
  s.authors     = ["Papa Pathé SENE"]
  s.email       = ["pathe.sene@xarala.sn"]
  s.homepage    = ""
  s.summary     = %q{GuarDb: is a guard extension handling the rake db:clone:test when schema.rb changes}
  s.description = %q{GuarDb: is a guard extension handling the rake db:clone:test when schema.rb changes}

  s.rubyforge_project = "guard-db"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
