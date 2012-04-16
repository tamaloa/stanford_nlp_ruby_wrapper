require "stanford_nlp_ruby_wrapper/version"
require "stanford_nlp_ruby_wrapper/part_of_speech_tagger"
require "stanford_nlp_ruby_wrapper/named_entity_recognizer"

require 'rjb'

module StanfordNlpRubyWrapper

  raise(Exception, "You have to set a JAVA_HOME environment variable for rjb to work!") unless ENV['JAVA_HOME']

end
