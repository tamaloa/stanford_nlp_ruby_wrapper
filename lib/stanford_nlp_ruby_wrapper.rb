require "stanford_nlp_ruby_wrapper/version"
require 'stanford_nlp_ruby_wrapper/measure'
require 'rjb'

module StanfordNlpRubyWrapper

  raise(Exception, "You have to set a JAVA_HOME environment variable for rjb to work!") unless ENV['JAVA_HOME']

  Rjb::load('bin/stanford-postagger.jar:bin/stanford-ner.jar', ['-Xmx200m'])

  CRFClassifier = Rjb::import('edu.stanford.nlp.ie.crf.CRFClassifier')
  classifier = CRFClassifier.getClassifierNoExceptions("bin/ner-eng-ie.crf-4-conll.ser.gz")

  MaxentTagger = Rjb::import('edu.stanford.nlp.tagger.maxent.MaxentTagger')
  MaxentTagger.init("bin/left3words-wsj-0-18.tagger")

  Sentence = Rjb::import('edu.stanford.nlp.ling.Sentence')

  sent = "Good afternoon Rajat Raina, how are you today?"

  Measure.time "NER", 10 do
    puts classifier.testString( sent )
    puts MaxentTagger.tagString( sent )
  end
end
