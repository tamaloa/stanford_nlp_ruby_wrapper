module StanfordNlpRubyWrapper
  class NamedEntityRecognizer

    attr_reader :java_classifier

    def initialize(java_vm_setting = ['-mx400m'])
      Rjb::load('bin/stanford-ner-2012-04-07/stanford-ner.jar',java_vm_setting)
      crf_classifier = Rjb::import('edu.stanford.nlp.ie.crf.CRFClassifier')
      @java_classifier = crf_classifier.getClassifierNoExceptions("bin/stanford-ner-2012-04-07/classifiers/english.all.3class.distsim.crf.ser.gz")
    end

    def classify(untagged_text)
      @java_classifier.classifyWithInlineXML(untagged_text)
    end

  end
end
