module StanfordNlpRubyWrapper
  class PartOfSpeechTagger

    attr_reader :java_tagger

    def initialize(java_vm_setting = ['-mx400m'])
      Rjb::load('bin/stanford-postagger-2012-03-09/stanford-postagger.jar', java_vm_setting)
      maxent_tagger = Rjb::import('edu.stanford.nlp.tagger.maxent.MaxentTagger')
      @java_tagger = maxent_tagger.new("bin/stanford-postagger-2012-03-09/models/wsj-0-18-left3words.tagger")
    end

    def tag_sentence(sentence)
      @java_tagger.tagString sentence
    end
  end
end