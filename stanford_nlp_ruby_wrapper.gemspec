# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "stanford_nlp_ruby_wrapper/version"

Gem::Specification.new do |s|
  s.name        = "stanford_nlp_ruby_wrapper"
  s.version     = StanfordNlpRubyWrapper::VERSION
  s.authors     = ["Tien Dung", "Michael Prilop"]
  s.email       = ["dungtn@gmail.com", "prilop@informatik.uni-leipzig.de"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}
  s.license     = %q{TODO: Check for stanford nlp licenses}

  s.rubyforge_project = "stanford_nlp_ruby_wrapper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('rjb')

  s.add_development_dependency('rake')
  s.add_development_dependency('test-unit')

end
