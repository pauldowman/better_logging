# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "better_logging/version"

Gem::Specification.new do |s|
  s.name        = "better_logging"
  s.version     = BetterLogging::VERSION
  s.authors     = ["pauldowman"]
  s.email       = ["paul@pauldowman.com"]
  s.homepage    = "https://github.com/pauldowman/better_logging"
  s.summary     = %q{Better logging for Rails}
  s.description = %q{This is a Rails plugin that improves the log format, and adds an optional “Exception” parameter to the warn() and error() methods to print a stack trace automatically.}

  s.rubyforge_project = "better_logging"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
