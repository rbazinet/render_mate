# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "render_mate/version"

Gem::Specification.new do |s|
  s.name        = "render_mate"
  s.version     = RenderMate::VERSION
  s.authors     = ["Rob Bazinet"]
  s.email       = ["rbazinet@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/render_mate"
  s.summary     = %q{This gem allows developers to interact with rendermate.com}
  s.description = %q{Using this gem allows interaction with rendermate.com to return truely render HTML of any site on the web.}

  s.rubyforge_project = "render_mate"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  #s.add_development_dependency "rspec"
  s.add_runtime_dependency "httparty"
end
