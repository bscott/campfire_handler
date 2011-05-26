# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "campfire_handler"

Gem::Specification.new do |s|
  s.name        = "campfire_handler"
  s.version     = CampfireHandler::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian Scott"]
  s.email       = ["brainscott@gmail.com"]
  s.homepage    = "https://github.com/bscott/campfire_handler"
  s.summary     = %q{Chef handler for sending exceptions to Campfire}
  s.description = %q{Chef handler for sending exceptions to Campfire}

  s.rubyforge_project = "campfire_handler"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("chef", ">= 0.9.0")
  s.add_dependency("tinder")

  s.add_development_dependency("mocha")
end
