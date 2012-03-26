# -*- encoding: utf-8 -*-
require File.expand_path('../lib/orphan/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Josh Lane", "Andy Delcambre"]
  gem.email         = ["jlane@engineyard.com", "adelcambre@engineyard.com"]
  gem.description   = %q{Let your mock models get adopted by real ORMs}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "orphan"
  gem.require_paths = ["lib"]
  gem.version       = Orphan::VERSION
end
