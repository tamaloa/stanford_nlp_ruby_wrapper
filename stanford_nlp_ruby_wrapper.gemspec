# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "stanford_nlp_ruby_wrapper/version"

Gem::Specification.new do |s|
  s.name        = "stanford_nlp_ruby_wrapper"
  s.version     = StanfordNlpRubyWrapper::VERSION
  s.authors     = ["Tien Dung", "Michael Prilop"]
  s.email       = ["dungtn@gmail.com", "prilop@informatik.uni-leipzig.de"]
  s.summary     = %q{A very thin wrapper around stanford nlp libs to demonstrate how to use them in ruby}
  s.description = %q{A very thin wrapper around stanford POS tagger and NER libs to demonstrate how to use them in ruby.}
  s.license     = %q{GPL-2}

  s.rubyforge_project = "stanford_nlp_ruby_wrapper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency('rjb')

  s.add_development_dependency('rake')
  s.add_development_dependency('test-unit')

end
