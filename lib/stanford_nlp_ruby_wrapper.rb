require "stanford_nlp_ruby_wrapper/version"
require 'stanford_nlp_ruby_wrapper/measure'
require 'rjb'

module StanfordNlpRubyWrapper

  raise(Exception, "You have to set a JAVA_HOME environment variable for rjb to work!") unless ENV['JAVA_HOME']

  Rjb::load('bin/stanford-postagger-2012-03-09/stanford-postagger.jar:bin/stanford-ner-2012-04-07/stanford-ner.jar', ['-mx400m'])

  CRFClassifier = Rjb::import('edu.stanford.nlp.ie.crf.CRFClassifier')
  classifier = CRFClassifier.getClassifierNoExceptions("bin/stanford-ner-2012-04-07/classifiers/english.all.3class.distsim.crf.ser.gz")

  MaxentTagger = Rjb::import('edu.stanford.nlp.tagger.maxent.MaxentTagger')
  tagger = MaxentTagger.new("bin/stanford-postagger-2012-03-09/models/wsj-0-18-left3words.tagger")

  sentence = "Good afternoon Rajat Raina, how are you today?"

  Measure.time "NER", 10 do
    puts classifier.classifyToString sentence
    puts tagger.tagString sentence
  end
end
