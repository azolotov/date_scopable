# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "date_scopable/version"

Gem::Specification.new do |s|
  s.name        = "date_scopable"
  s.version     = DateScopable::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Anton Zolotov"]
  s.email       = ["anton@zolotov.eu"]
  s.homepage    = "https://github.com/azolotov/date_scopable"
  s.summary     = %q{Convenient scopes for retrieving ActiveRecord models by date}
  s.description = %q{Convenient scopes for retrieving ActiveRecord models by date}

  s.rubyforge_project = "date_scopable"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
